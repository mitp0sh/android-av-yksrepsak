.class final LuA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Luz;


# direct methods
.method constructor <init>(Luz;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, LuA;->a:Luz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, LuA;->a:Luz;

    invoke-static {v0}, Luz;->a(Luz;)Lcom/kaspersky/components/views/sidebar/SideBarLayout;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/kaspersky/components/views/sidebar/SideBarLayout;->b()V

    .line 387
    :cond_0
    return-void
.end method
