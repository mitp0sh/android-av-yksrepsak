.class public final enum Lcom/kms/issues/IssueEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Added:Lcom/kms/issues/IssueEventType;

.field public static final enum Changed:Lcom/kms/issues/IssueEventType;

.field public static final enum Removed:Lcom/kms/issues/IssueEventType;

.field private static final synthetic a:[Lcom/kms/issues/IssueEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/kms/issues/IssueEventType;

    const-string v1, "Changed"

    invoke-direct {v0, v1, v2}, Lcom/kms/issues/IssueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/issues/IssueEventType;->Changed:Lcom/kms/issues/IssueEventType;

    .line 9
    new-instance v0, Lcom/kms/issues/IssueEventType;

    const-string v1, "Removed"

    invoke-direct {v0, v1, v3}, Lcom/kms/issues/IssueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/issues/IssueEventType;->Removed:Lcom/kms/issues/IssueEventType;

    .line 10
    new-instance v0, Lcom/kms/issues/IssueEventType;

    const-string v1, "Added"

    invoke-direct {v0, v1, v4}, Lcom/kms/issues/IssueEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kms/issues/IssueEventType;->Added:Lcom/kms/issues/IssueEventType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kms/issues/IssueEventType;

    sget-object v1, Lcom/kms/issues/IssueEventType;->Changed:Lcom/kms/issues/IssueEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kms/issues/IssueEventType;->Removed:Lcom/kms/issues/IssueEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kms/issues/IssueEventType;->Added:Lcom/kms/issues/IssueEventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kms/issues/IssueEventType;->a:[Lcom/kms/issues/IssueEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kms/issues/IssueEventType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/kms/issues/IssueEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kms/issues/IssueEventType;

    return-object v0
.end method

.method public static values()[Lcom/kms/issues/IssueEventType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kms/issues/IssueEventType;->a:[Lcom/kms/issues/IssueEventType;

    invoke-virtual {v0}, [Lcom/kms/issues/IssueEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kms/issues/IssueEventType;

    return-object v0
.end method


# virtual methods
.method protected final checkData(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Issue event data must be null for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kms/issues/IssueEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    return-void
.end method

.method public final newEvent(Lps;)Lpu;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kms/issues/IssueEventType;->newEvent(Lps;Ljava/lang/Object;)Lpu;

    move-result-object v0

    return-object v0
.end method

.method public final newEvent(Lps;Ljava/lang/Object;)Lpu;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p2}, Lcom/kms/issues/IssueEventType;->checkData(Ljava/lang/Object;)V

    .line 20
    new-instance v0, Lpu;

    invoke-direct {v0, p1, p0, p2}, Lpu;-><init>(Lps;Lcom/kms/issues/IssueEventType;Ljava/lang/Object;)V

    return-object v0
.end method
