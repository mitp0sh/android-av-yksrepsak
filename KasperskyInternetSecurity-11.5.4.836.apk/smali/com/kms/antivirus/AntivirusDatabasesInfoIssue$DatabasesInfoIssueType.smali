.class public abstract enum Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Error:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

.field public static final enum Info:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

.field private static final synthetic a:[Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;


# instance fields
.field private final mIconResId:I

.field private final mIssueId:Ljava/lang/String;

.field private final mIssueType:Lcom/kms/issues/IssueType;

.field private final mShortInfoResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 108
    new-instance v0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType$1;

    const-string v1, "Info"

    sget-object v3, Lcom/kms/issues/IssueType;->Info:Lcom/kms/issues/IssueType;

    const v5, 0x7f0200bd

    sget-object v6, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType$1;-><init>(Ljava/lang/String;ILcom/kms/issues/IssueType;IILjava/lang/String;)V

    sput-object v0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->Info:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    .line 114
    new-instance v5, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType$2;

    const-string v6, "Error"

    sget-object v8, Lcom/kms/issues/IssueType;->Critical:Lcom/kms/issues/IssueType;

    const v9, 0x7f070060

    sget-object v11, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->b:Ljava/lang/String;

    move v10, v4

    invoke-direct/range {v5 .. v11}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType$2;-><init>(Ljava/lang/String;ILcom/kms/issues/IssueType;IILjava/lang/String;)V

    sput-object v5, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->Error:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    sget-object v1, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->Info:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->Error:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->a:[Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/kms/issues/IssueType;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput-object p3, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mIssueType:Lcom/kms/issues/IssueType;

    .line 128
    iput p4, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mShortInfoResId:I

    .line 129
    iput p5, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mIconResId:I

    .line 130
    iput-object p6, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mIssueId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/kms/issues/IssueType;IILjava/lang/String;Lmc;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct/range {p0 .. p6}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;-><init>(Ljava/lang/String;ILcom/kms/issues/IssueType;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mIssueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;)Lcom/kms/issues/IssueType;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mIssueType:Lcom/kms/issues/IssueType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mIconResId:I

    return v0
.end method

.method static synthetic access$300(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mShortInfoResId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    return-object v0
.end method

.method public static values()[Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->a:[Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    invoke-virtual {v0}, [Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    return-object v0
.end method


# virtual methods
.method public abstract trySolve()V
.end method
