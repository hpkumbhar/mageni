# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.833812");
  script_version("2024-05-16T05:05:35+0000");
  script_cve_id("CVE-2023-50229", "CVE-2023-50230");
  script_tag(name:"cvss_base", value:"5.0");
  script_tag(name:"cvss_base_vector", value:"AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_tag(name:"last_modification", value:"2024-05-16 05:05:35 +0000 (Thu, 16 May 2024)");
  script_tag(name:"creation_date", value:"2024-03-04 12:50:13 +0000 (Mon, 04 Mar 2024)");
  script_name("openSUSE: Security Advisory for bluez (SUSE-SU-2024:0183-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=openSUSELeap15\.5");

  script_xref(name:"Advisory-ID", value:"SUSE-SU-2024:0183-1");
  script_xref(name:"URL", value:"https://lists.opensuse.org/archives/list/security-announce@lists.opensuse.org/thread/KJHM2UKWJI56JZTO3S3P3L3PY727NDLD");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'bluez'
  package(s) announced via the SUSE-SU-2024:0183-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"This update for bluez fixes the following issues:

  * CVE-2023-50229: Fixed an out of bounds write in the primary version counter
      for the Phone Book Access Profile implementation (bsc#1218300).

  * CVE-2023-50230: Fixed an out of bounds write in the secondary version
      counter for the Phone Book Access Profile implementation (bsc#1218301).

  ##");

  script_tag(name:"affected", value:"'bluez' package(s) on openSUSE Leap 15.5.");

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

if(release == "openSUSELeap15.5") {

  if(!isnull(res = isrpmvuln(pkg:"bluez-cups-debuginfo", rpm:"bluez-cups-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-deprecated", rpm:"bluez-deprecated~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-devel", rpm:"bluez-devel~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-obexd-debuginfo", rpm:"bluez-obexd-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-test", rpm:"bluez-test~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-test-debuginfo", rpm:"bluez-test-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-cups", rpm:"bluez-cups~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3-debuginfo", rpm:"libbluetooth3-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-obexd", rpm:"bluez-obexd~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-debugsource", rpm:"bluez-debugsource~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3", rpm:"libbluetooth3~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-deprecated-debuginfo", rpm:"bluez-deprecated-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez", rpm:"bluez~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-debuginfo", rpm:"bluez-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-zsh-completion", rpm:"bluez-zsh-completion~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-auto-enable-devices", rpm:"bluez-auto-enable-devices~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-devel-32bit", rpm:"bluez-devel-32bit~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3-32bit-debuginfo", rpm:"libbluetooth3-32bit-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3-32bit", rpm:"libbluetooth3-32bit~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-devel-64bit", rpm:"bluez-devel-64bit~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3-64bit", rpm:"libbluetooth3-64bit~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3-64bit-debuginfo", rpm:"libbluetooth3-64bit-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-cups-debuginfo", rpm:"bluez-cups-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-deprecated", rpm:"bluez-deprecated~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-devel", rpm:"bluez-devel~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-obexd-debuginfo", rpm:"bluez-obexd-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-test", rpm:"bluez-test~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-test-debuginfo", rpm:"bluez-test-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-cups", rpm:"bluez-cups~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3-debuginfo", rpm:"libbluetooth3-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-obexd", rpm:"bluez-obexd~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-debugsource", rpm:"bluez-debugsource~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3", rpm:"libbluetooth3~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-deprecated-debuginfo", rpm:"bluez-deprecated-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez", rpm:"bluez~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-debuginfo", rpm:"bluez-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-zsh-completion", rpm:"bluez-zsh-completion~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-auto-enable-devices", rpm:"bluez-auto-enable-devices~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-devel-32bit", rpm:"bluez-devel-32bit~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3-32bit-debuginfo", rpm:"libbluetooth3-32bit-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3-32bit", rpm:"libbluetooth3-32bit~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"bluez-devel-64bit", rpm:"bluez-devel-64bit~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3-64bit", rpm:"libbluetooth3-64bit~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"libbluetooth3-64bit-debuginfo", rpm:"libbluetooth3-64bit-debuginfo~5.65~150500.3.6.1", rls:"openSUSELeap15.5"))) {
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