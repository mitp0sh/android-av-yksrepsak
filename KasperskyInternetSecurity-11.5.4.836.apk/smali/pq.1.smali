.class final Lpq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbR;


# instance fields
.field private synthetic a:Lpp;


# direct methods
.method constructor <init>(Lpp;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lpq;->a:Lpp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LbS;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpq;->a:Lpp;

    invoke-virtual {v0}, Lpp;->i()Lps;

    move-result-object v0

    invoke-interface {v0}, Lps;->e()V

    .line 67
    return-void
.end method
