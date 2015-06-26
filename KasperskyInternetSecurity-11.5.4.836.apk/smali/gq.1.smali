.class public final Lgq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgr;


# direct methods
.method public constructor <init>(Lgw;)V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lgq;->a:Lgr;

    .line 316
    new-instance v0, Lgr;

    invoke-direct {v0, p1}, Lgr;-><init>(Lgw;)V

    iput-object v0, p0, Lgq;->a:Lgr;

    .line 317
    return-void
.end method


# virtual methods
.method public final a(LbA;[C)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lgq;->a:Lgr;

    invoke-virtual {v0, p1, p2}, Lgr;->a(LbA;[C)V

    .line 322
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lgq;->a:Lgr;

    invoke-virtual {v0, p1, p2}, Lgr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
