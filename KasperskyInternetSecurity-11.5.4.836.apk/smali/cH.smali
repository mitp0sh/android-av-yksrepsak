.class final LcH;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method

.method private b()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 32
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 33
    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, LcH;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, LcH;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
