.class public final Lcom/kaspersky/components/statistics/popularity/Wlips;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->b:I

    .line 9
    invoke-static {}, Lcom/kaspersky/components/statistics/popularity/Wlips;->prepareToSend()I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    .line 10
    return-void
.end method

.method private static native addApplication(ILjava/lang/String;)Z
.end method

.method private static native addApplicationByMd5(I[B[B)Z
.end method

.method public static native getApkMd5(Ljava/lang/String;)[B
.end method

.method public static native getDexMd5(Ljava/lang/String;)[B
.end method

.method private static native prepareToSend()I
.end method

.method private static native release(I)V
.end method

.method private static native send(II)Z
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Statistics has already been sent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iget v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    iget v1, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->b:I

    invoke-static {v0, v1}, Lcom/kaspersky/components/statistics/popularity/Wlips;->send(II)Z

    move-result v0

    .line 31
    iget v1, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    invoke-static {v1}, Lcom/kaspersky/components/statistics/popularity/Wlips;->release(I)V

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    .line 33
    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 13
    iget v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t add application: Statistics has already been sent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    iget v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    invoke-static {v0, p1}, Lcom/kaspersky/components/statistics/popularity/Wlips;->addApplication(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a([B[B)Z
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t add application: Statistics has already been sent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iget v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    invoke-static {v0, p1, p2}, Lcom/kaspersky/components/statistics/popularity/Wlips;->addApplicationByMd5(I[B[B)Z

    move-result v0

    return v0
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    if-eqz v0, :cond_0

    .line 39
    iget v0, p0, Lcom/kaspersky/components/statistics/popularity/Wlips;->a:I

    invoke-static {v0}, Lcom/kaspersky/components/statistics/popularity/Wlips;->release(I)V

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Statistics has not been sent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 43
    return-void
.end method
