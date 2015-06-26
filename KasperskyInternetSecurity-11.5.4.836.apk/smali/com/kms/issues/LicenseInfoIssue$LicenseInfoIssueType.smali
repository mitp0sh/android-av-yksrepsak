.class public final enum Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Free:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

.field public static final enum Premium:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

.field public static final enum Trial:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

.field private static final synthetic a:[Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;


# instance fields
.field private final mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 163
    new-instance v0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    const-string v1, "Free"

    const v2, 0x7f070043

    invoke-direct {v0, v1, v4, v2}, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->Free:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    .line 164
    new-instance v0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    const-string v1, "Trial"

    invoke-direct {v0, v1, v5, v3}, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->Trial:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    .line 165
    new-instance v0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    const-string v1, "Premium"

    invoke-direct {v0, v1, v6, v3}, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->Premium:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    sget-object v1, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->Free:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->Trial:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->Premium:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->a:[Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->mTitleResId:I

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;)I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->mTitleResId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    return-object v0
.end method

.method public static values()[Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->a:[Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    invoke-virtual {v0}, [Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    return-object v0
.end method
