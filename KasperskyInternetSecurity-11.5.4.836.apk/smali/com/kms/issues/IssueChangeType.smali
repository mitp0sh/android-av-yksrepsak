.class public final enum Lcom/kms/issues/IssueChangeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Added:Lcom/kms/issues/IssueChangeType;

.field public static final enum Changed:Lcom/kms/issues/IssueChangeType;

.field public static final enum Removed:Lcom/kms/issues/IssueChangeType;

.field private static final synthetic a:[Lcom/kms/issues/IssueChangeType;


# instance fields
.field private final mIssueEventType:Lcom/kms/issues/IssueEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/kms/issues/IssueChangeType;

    const-string v1, "Removed"

    sget-object v2, Lcom/kms/issues/IssueEventType;->Removed:Lcom/kms/issues/IssueEventType;

    invoke-direct {v0, v1, v3, v2}, Lcom/kms/issues/IssueChangeType;-><init>(Ljava/lang/String;ILcom/kms/issues/IssueEventType;)V

    sput-object v0, Lcom/kms/issues/IssueChangeType;->Removed:Lcom/kms/issues/IssueChangeType;

    .line 6
    new-instance v0, Lcom/kms/issues/IssueChangeType;

    const-string v1, "Added"

    sget-object v2, Lcom/kms/issues/IssueEventType;->Added:Lcom/kms/issues/IssueEventType;

    invoke-direct {v0, v1, v4, v2}, Lcom/kms/issues/IssueChangeType;-><init>(Ljava/lang/String;ILcom/kms/issues/IssueEventType;)V

    sput-object v0, Lcom/kms/issues/IssueChangeType;->Added:Lcom/kms/issues/IssueChangeType;

    .line 7
    new-instance v0, Lcom/kms/issues/IssueChangeType;

    const-string v1, "Changed"

    sget-object v2, Lcom/kms/issues/IssueEventType;->Changed:Lcom/kms/issues/IssueEventType;

    invoke-direct {v0, v1, v5, v2}, Lcom/kms/issues/IssueChangeType;-><init>(Ljava/lang/String;ILcom/kms/issues/IssueEventType;)V

    sput-object v0, Lcom/kms/issues/IssueChangeType;->Changed:Lcom/kms/issues/IssueChangeType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/issues/IssueChangeType;

    sget-object v1, Lcom/kms/issues/IssueChangeType;->Removed:Lcom/kms/issues/IssueChangeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/issues/IssueChangeType;->Added:Lcom/kms/issues/IssueChangeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kms/issues/IssueChangeType;->Changed:Lcom/kms/issues/IssueChangeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kms/issues/IssueChangeType;->a:[Lcom/kms/issues/IssueChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/kms/issues/IssueEventType;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/kms/issues/IssueChangeType;->mIssueEventType:Lcom/kms/issues/IssueEventType;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/issues/IssueChangeType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kms/issues/IssueChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/issues/IssueChangeType;

    return-object v0
.end method

.method public static values()[Lcom/kms/issues/IssueChangeType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kms/issues/IssueChangeType;->a:[Lcom/kms/issues/IssueChangeType;

    invoke-virtual {v0}, [Lcom/kms/issues/IssueChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/issues/IssueChangeType;

    return-object v0
.end method


# virtual methods
.method public final getIssueEventType()Lcom/kms/issues/IssueEventType;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kms/issues/IssueChangeType;->mIssueEventType:Lcom/kms/issues/IssueEventType;

    return-object v0
.end method
