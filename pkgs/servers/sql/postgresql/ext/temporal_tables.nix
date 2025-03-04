{
  lib,
  stdenv,
  fetchFromGitHub,
  postgresql,
  buildPostgresqlExtension,
}:

buildPostgresqlExtension rec {
  pname = "temporal_tables";
  version = "1.2.2";

  src = fetchFromGitHub {
    owner = "arkhipov";
    repo = "temporal_tables";
    rev = "v${version}";
    sha256 = "sha256-7+DCSPAPhsokWDq/5IXNhd7jY6FfzxxUjlsg/VJeD3k=";
  };

  meta = with lib; {
    description = "Temporal Tables PostgreSQL Extension";
    homepage = "https://github.com/arkhipov/temporal_tables";
    maintainers = with maintainers; [ ggpeti ];
    platforms = postgresql.meta.platforms;
    license = licenses.bsd2;
  };
}
