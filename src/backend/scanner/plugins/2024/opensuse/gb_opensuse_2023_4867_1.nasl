# SPDX-FileCopyrightText: 2024 Greenbone AG
# Some text descriptions might be excerpted from (a) referenced
# source(s), and are Copyright (C) by the respective right holder(s).
#
# SPDX-License-Identifier: GPL-2.0-only

if(description)
{
  script_oid("1.3.6.1.4.1.25623.1.0.833566");
  script_version("2024-05-16T05:05:35+0000");
  script_cve_id("CVE-2023-2163", "CVE-2023-3777");
  script_tag(name:"cvss_base", value:"6.8");
  script_tag(name:"cvss_base_vector", value:"AV:L/AC:L/Au:S/C:C/I:C/A:C");
  script_tag(name:"last_modification", value:"2024-05-16 05:05:35 +0000 (Thu, 16 May 2024)");
  script_tag(name:"severity_vector", value:"CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H");
  script_tag(name:"severity_origin", value:"NVD");
  script_tag(name:"severity_date", value:"2023-09-22 02:02:18 +0000 (Fri, 22 Sep 2023)");
  script_tag(name:"creation_date", value:"2024-03-04 07:42:34 +0000 (Mon, 04 Mar 2024)");
  script_name("openSUSE: Security Advisory for the Linux Kernel (Live Patch 6 for SLE 15 SP5) (SUSE-SU-2023:4867-1)");
  script_category(ACT_GATHER_INFO);
  script_copyright("Copyright (C) 2024 Greenbone AG");
  script_family("SuSE Local Security Checks");
  script_dependencies("gather-package-list.nasl");
  script_mandatory_keys("ssh/login/suse", "ssh/login/rpms", re:"ssh/login/release=(openSUSELeap15\.4|openSUSELeap15\.5)");

  script_xref(name:"Advisory-ID", value:"SUSE-SU-2023:4867-1");
  script_xref(name:"URL", value:"https://lists.opensuse.org/archives/list/security-announce@lists.opensuse.org/thread/NY7BZ4F6B2P5LA3LVKMWDKSS4KMTWY6C");

  script_tag(name:"summary", value:"The remote host is missing an update for the 'the Linux Kernel (Live Patch 6 for SLE 15 SP5)'
  package(s) announced via the SUSE-SU-2023:4867-1 advisory.");

  script_tag(name:"vuldetect", value:"Checks if a vulnerable package version is present on the target host.");

  script_tag(name:"insight", value:"This update for the Linux Kernel 5.14.21-150500_55_31 fixes several issues.

  The following security issues were fixed:

  * CVE-2023-3777: Fixed a use-after-free vulnerability in netfilter: nf_tables
      component can be exploited to achieve local privilege escalation.
      (bsc#1215097)

  * CVE-2023-2163: Fixed an incorrect verifier pruning in BPF that could lead to
      unsafe code paths being incorrectly marked as safe, resulting in arbitrary
      read/write in kernel memory, lateral privilege escalation, and container
      escape. (bsc#1215519)

  ##");

  script_tag(name:"affected", value:"'the Linux Kernel (Live Patch 6 for SLE 15 SP5)' package(s) on openSUSE Leap 15.4, openSUSE Leap 15.5.");

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

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150400_24_92-default-debuginfo-2", rpm:"kernel-livepatch-5_14_21-150400_24_92-default-debuginfo-2~150400.2.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-SLE15-SP4_Update_19-debugsource-2", rpm:"kernel-livepatch-SLE15-SP4_Update_19-debugsource-2~150400.2.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150400_24_92-default-2", rpm:"kernel-livepatch-5_14_21-150400_24_92-default-2~150400.2.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150400_24_92-default-debuginfo-2", rpm:"kernel-livepatch-5_14_21-150400_24_92-default-debuginfo-2~150400.2.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-SLE15-SP4_Update_19-debugsource-2", rpm:"kernel-livepatch-SLE15-SP4_Update_19-debugsource-2~150400.2.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150400_24_92-default-2", rpm:"kernel-livepatch-5_14_21-150400_24_92-default-2~150400.2.1", rls:"openSUSELeap15.4"))) {
    report += res;
  }

  if(report != "") {
    security_message(data:report);
  } else if(__pkg_match) {
    exit(99);
  }
  exit(0);
}

if(release == "openSUSELeap15.5") {

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-SLE15-SP5_Update_6-debugsource-2", rpm:"kernel-livepatch-SLE15-SP5_Update_6-debugsource-2~150500.2.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150500_55_31-default-2", rpm:"kernel-livepatch-5_14_21-150500_55_31-default-2~150500.2.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150500_55_31-default-debuginfo-2", rpm:"kernel-livepatch-5_14_21-150500_55_31-default-debuginfo-2~150500.2.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-SLE15-SP5_Update_6-debugsource-2", rpm:"kernel-livepatch-SLE15-SP5_Update_6-debugsource-2~150500.2.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150500_55_31-default-2", rpm:"kernel-livepatch-5_14_21-150500_55_31-default-2~150500.2.1", rls:"openSUSELeap15.5"))) {
    report += res;
  }

  if(!isnull(res = isrpmvuln(pkg:"kernel-livepatch-5_14_21-150500_55_31-default-debuginfo-2", rpm:"kernel-livepatch-5_14_21-150500_55_31-default-debuginfo-2~150500.2.1", rls:"openSUSELeap15.5"))) {
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