.class final LvX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:LvW;


# direct methods
.method constructor <init>(LvW;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, LvX;->b:LvW;

    iput-object p2, p0, LvX;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, LvX;->b:LvW;

    invoke-virtual {v0}, LvW;->i()Lsp;

    move-result-object v0

    .line 32
    iget-object v0, v0, Lsp;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 34
    iget-object v4, p0, LvX;->b:LvW;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, LvW;->a(LbS;Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, LvX;->a:Landroid/widget/CheckBox;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 38
    return-void

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    :cond_1
    move v1, v2

    .line 37
    goto :goto_1
.end method
