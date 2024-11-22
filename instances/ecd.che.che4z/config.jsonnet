local permissionsTemplates = import '../../templates/permissions.libsonnet';

{
  project+: {
    fullName: "ecd.che.che4z",
    displayName: "Eclipse Che4z",
  },
  jenkins+: {
    permissions+:
      // https://bugs.eclipse.org/bugs/show_bug.cgi?id=566607
      permissionsTemplates.user("andrea.zaccaro@broadcom.com", ["Credentials/Create", "Credentials/Update"]),
    plugins+: [
      "embeddable-build-status",
      "copyartifact",
    ],
  },
  seLinuxLevel: "s0:c32,c19",
}
