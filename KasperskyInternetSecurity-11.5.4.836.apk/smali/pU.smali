.class public final LpU;
.super LpS;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, LpU;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LpU;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 8
    sget-object v0, LpU;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Warning:Lcom/kms/issues/IssueType;

    invoke-direct {p0, v0, v1}, LpS;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;)V

    .line 9
    return-void
.end method

.method public static a()LpU;
    .locals 1

    .prologue
    .line 12
    new-instance v0, LpU;

    invoke-direct {v0}, LpU;-><init>()V

    return-object v0
.end method
