# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.833028");
  script_version("2024-05-16T05:05:35+0000");
  script_cve_id("CVE-2022-40898");
  script_tag(name:"cvss_base", value:"7.8");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_tag(name:"last_modification", value:"2024-05-16 05:05:35 +0000 (Thu, 16 May 2024)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2022-12-30 22:15:22 +0000 (Fri, 30 Dec 2022)");
  script_tag(name:"creation_date", value:"2024-03-04 07:44:34 +0000 (Mon, 04 Mar 2024)");
  script_name("openSUSE: Security Advisory for python (SUSE-SU-2023:0088-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSELeap15\.4");

  script_xref(name:"Advisory-ID", value:"SUSE-SU-2023:0088-1");
  script_xref(name:"URL", value:"https://lists.opensuse.org/archives/list/security-announce@lists.opensuse.org/thread/R4M566AB324K3L6V4C2RMDKBBBJ7LYVV");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'python'
  package(s) announced via the SUSE-SU-2023:0088-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"This update for python-wheel fixes the following issues:

  - CVE-2022-40898: Fixed an excessive use of CPU that could be triggered
       via a crafted regular expression (bsc#1206670).");

  script_tag(name:"affected", value:"'python' package(s) on openSUSE Leap 15.4.");

  script_tag(name:"solution", value:"Please install the updated package(s).");

  script_tag(name:"solution_type", value:"VendorFix");
  script_tag(name:"qod_type", value:"package");

  exit(0);
}

include("revisions-lib.inc");
include("pkg-lib-rpm.inc");

release = rpm_get_ssh_release();
if(!release)
  exit(0);

res = "";
report = "";

if(release == "openSUSELeap15.4") {

  if(!isnull(res = isrpmvuln(pkg:"python3-wheel", rpm:"python3-wheel~0.32.3~150100.6.5.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"python3-wheel", rpm:"python3-wheel~0.32.3~150100.6.5.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

exit(0);