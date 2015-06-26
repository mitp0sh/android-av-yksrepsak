.class public final enum Lcom/kms/issues/IssueType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Critical:Lcom/kms/issues/IssueType;

.field public static final enum Info:Lcom/kms/issues/IssueType;

.field public static final enum Warning:Lcom/kms/issues/IssueType;

.field private static final synthetic a:[Lcom/kms/issues/IssueType;


# instance fields
.field private final mProblem:Z

.field private final mSeverity:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 8
    new-instance v0, Lcom/kms/issues/IssueType;

    const-string v1, "Info"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/kms/issues/IssueType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/kms/issues/IssueType;->Info:Lcom/kms/issues/IssueType;

    .line 13
    new-instance v0, Lcom/kms/issues/IssueType;

    const-string v1, "Warning"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/kms/issues/IssueType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/kms/issues/IssueType;->Warning:Lcom/kms/issues/IssueType;

    .line 18
    new-instance v0, Lcom/kms/issues/IssueType;

    const-string v1, "Critical"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/kms/issues/IssueType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/kms/issues/IssueType;->Critical:Lcom/kms/issues/IssueType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/issues/IssueType;

    sget-object v1, Lcom/kms/issues/IssueType;->Info:Lcom/kms/issues/IssueType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/issues/IssueType;->Warning:Lcom/kms/issues/IssueType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/issues/IssueType;->Critical:Lcom/kms/issues/IssueType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kms/issues/IssueType;->a:[Lcom/kms/issues/IssueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-boolean p3, p0, Lcom/kms/issues/IssueType;->mProblem:Z

    .line 26
    iput p4, p0, Lcom/kms/issues/IssueType;->mSeverity:I

    .line 27
    return-void
.end method

.method public static getLeastSevereIssueType()Lcom/kms/issues/IssueType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/kms/issues/IssueType;->Info:Lcom/kms/issues/IssueType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/issues/IssueType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kms/issues/IssueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/issues/IssueType;

    return-object v0
.end method

.method public static values()[Lcom/kms/issues/IssueType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kms/issues/IssueType;->a:[Lcom/kms/issues/IssueType;

    invoke-virtual {v0}, [Lcom/kms/issues/IssueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/issues/IssueType;

    return-object v0
.end method


# virtual methods
.method public final canBeIgnored()Z
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kms/issues/IssueType;->Warning:Lcom/kms/issues/IssueType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSeverity()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/kms/issues/IssueType;->mSeverity:I

    return v0
.end method

.method public final isProblem()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/kms/issues/IssueType;->mProblem:Z

    return v0
.end method
