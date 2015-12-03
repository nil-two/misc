use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => "App-rl",
    EXE_FILES    => [ qw(rl) ],
    VERSION_FROM => "rl",
    EXE_FILES    => ["rl"],
);
