.class final Lcom/kaspersky/components/updater/TinyUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lbg;)V
    .locals 5

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-interface {p1}, Lbg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lbg;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1}, Lbg;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lbg;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kaspersky/components/updater/TinyUpdater;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kaspersky/components/updater/TinyUpdater;->a:I

    .line 14
    return-void
.end method

.method private static native check(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native free(I)V
.end method

.method private static native init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 21
    iget v0, p0, Lcom/kaspersky/components/updater/TinyUpdater;->a:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/kaspersky/components/updater/TinyUpdater;->check(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/kaspersky/components/updater/TinyUpdater;->a:I

    invoke-static {v0}, Lcom/kaspersky/components/updater/TinyUpdater;->free(I)V

    .line 27
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 28
    return-void
.end method
