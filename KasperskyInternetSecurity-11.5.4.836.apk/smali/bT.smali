.class final LbT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:LbS;


# direct methods
.method constructor <init>(LbS;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, LbT;->a:LbS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, LbT;->a:LbS;

    invoke-virtual {v0, p2}, LbS;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LbQ;

    .line 98
    iget-object v1, p0, LbT;->a:LbS;

    iget-object v2, p0, LbT;->a:LbS;

    invoke-virtual {v2}, LbS;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, LbS;->a(LbQ;LbS;Landroid/content/Context;)V

    .line 99
    return-void
.end method
