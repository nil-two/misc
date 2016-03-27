#include <stdio.h>
#include <stdlib.h>
#include <string.h>

enum {
	BUF_SIZE = 1024,
};

int
string_to_number(char *s, char **err)
{
	int n;
	char *end;

	n = strtol(s, &end, 10);
	if (end - s == 0) {
		*err = "cannot convert N";
		return 0;
	}
	return n;
}

char *
read_file_entire(FILE *fp, char **err)
{
	char buf[BUF_SIZE];
	char *src;
	size_t src_size = 0;

	if ((src = malloc(sizeof(char) * BUF_SIZE)) == NULL) {
		*err = "failed to allocate src";
		return NULL;
	}

	while (fgets(buf, BUF_SIZE, fp) != NULL) {
		src_size += strlen(buf);
		if ((src = realloc(src, src_size)) == NULL) {
			*err = "failed to reallocate src";
			return NULL;
		}
		strcat(src, buf);
	}

	if (ferror(fp)) {
		*err = "error reading src";
		return NULL;
	}
	return src;
}

char *
read_argf(int nfiles, char *files[], char **err)
{
	int i;
	FILE *fp;
	char *src;
	char *next_src;
	size_t src_size = 0;

	if ((src = malloc(sizeof(char) * BUF_SIZE)) == NULL) {
		*err = "failed to allocate src";
		return NULL;
	}

	if (nfiles == 0) {
		src = read_file_entire(stdin, err);
		if (*err != NULL) {
			return NULL;
		}
	} else {
		for (i = 0; i < nfiles; i++) {
			if ((fp = fopen(files[i], "r")) == NULL) {
				*err = "failed to open file";
				return NULL;
			}

			next_src = read_file_entire(fp, err);
			if (*err != NULL) {
				fclose(fp);
				return NULL;
			}

			src_size += strlen(next_src);
			if ((src = realloc(src, src_size)) == NULL) {
				fclose(fp);
				*err = "failed to reallocate src";
				return NULL;
			}
			strcat(src, next_src);

			fclose(fp);
		}
	}
	return src;
}

int
main(int argc, char *argv[])
{
	int i;
	int n;
	char *src;
	char **err;

	if ((err = malloc(sizeof(char *))) == NULL) {
		fprintf(stderr, "catn: failed to allocate err");
		return 2;
	}
	*err = NULL;

	if (argc == 1 || (strcmp(argv[1], "--help") == 0)) {
		fprintf(stderr, "usage: catn N [FILE]...\n");
		return 2;
	}

	n = string_to_number(argv[1], err);
	if (*err != NULL) {
		fprintf(stderr, "catn: %s\n", *err);
		return 2;
	}

	src = read_argf(argc-2, argv+2, err);
	if (*err != NULL) {
		fprintf(stderr, "catn: %s\n", *err);
		return 2;
	}

	if (n < 0) {
		for (;;) {
			printf("%s", src);
		}
	} else {
		for (i = 0; i < n; i++) {
			printf("%s", src);
		}
	}
	return 0;
}
