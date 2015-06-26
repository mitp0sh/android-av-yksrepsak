.class final LvP;
.super Lnd;
.source "SourceFile"


# instance fields
.field private synthetic a:LvO;


# direct methods
.method constructor <init>(LvO;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, LvP;->a:LvO;

    invoke-direct {p0, p2}, Lnd;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/support/v4/app/Fragment;)Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, LvP;->a:LvO;

    invoke-static {v0}, LvO;->a(LvO;)Lwd;

    move-result-object v0

    check-cast p1, LvS;

    invoke-interface {p1}, LvS;->a()Lwd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
