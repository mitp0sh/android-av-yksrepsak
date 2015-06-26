.class final LcY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldh;


# instance fields
.field private synthetic a:LcW;


# direct methods
.method private constructor <init>(LcW;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, LcY;->a:LcW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LcW;B)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1}, LcY;-><init>(LcW;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, LcY;->a:LcW;

    invoke-static {v0}, LcW;->d(LcW;)V

    .line 380
    :cond_0
    iget-object v0, p0, LcY;->a:LcW;

    invoke-static {v0}, LcW;->e(LcW;)LcU;

    move-result-object v0

    invoke-virtual {v0}, LcU;->b()V

    .line 381
    iget-object v0, p0, LcY;->a:LcW;

    invoke-static {v0}, LcW;->f(LcW;)Ldd;

    move-result-object v0

    invoke-virtual {v0}, Ldd;->b()V

    .line 382
    return-void
.end method
