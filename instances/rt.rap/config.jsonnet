{
  project+: {
    fullName: "rt.rap",
    displayName: "Eclipse RAP",
  },
  jenkins+: {
    plugins+: [
      "copyartifact",
    ],
  },
  seLinuxLevel: "s0:c52,c9",
}
