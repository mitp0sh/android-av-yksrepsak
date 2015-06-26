.class final Lpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbR;


# instance fields
.field private synthetic a:Lpe;


# direct methods
.method constructor <init>(Lpe;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lpi;->a:Lpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LbS;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lpi;->a:Lpe;

    invoke-static {v0}, Lpe;->a(Lpe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpk;

    invoke-static {v0}, Lpk;->a(Lpk;)Lps;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->b(Lps;)V

    .line 201
    invoke-interface {v0}, Lps;->e()V

    .line 202
    return-void
.end method
