.class public final LvW;
.super LvQ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lwc;)V
    .locals 2

    .prologue
    .line 16
    const-string v0, "setting_checkbox"

    const v1, 0x7f030057

    invoke-direct {p0, v0, p1, v1}, LvQ;-><init>(Ljava/lang/String;Lwc;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lwc;

    invoke-virtual {p0, p1, p2, p3}, LvW;->a(Lwc;Landroid/content/Context;LbX;)V

    return-void
.end method

.method protected final a(Lwc;Landroid/content/Context;LbX;)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, LvQ;->a(Lwc;Landroid/content/Context;LbX;)V

    .line 23
    invoke-virtual {p0}, LvW;->i()Lsp;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lsp;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 26
    const v0, 0x7f0b00fd

    invoke-virtual {p3, v0}, LbX;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 28
    new-instance v1, LvX;

    invoke-direct {v1, p0, v0}, LvX;-><init>(LvW;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method public final g()LbR;
    .locals 1

    .prologue
    .line 44
    new-instance v0, LvY;

    invoke-direct {v0, p0}, LvY;-><init>(LvW;)V

    return-object v0
.end method

.method public final bridge synthetic h()LbR;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, LvQ;->h()LbR;

    move-result-object v0

    return-object v0
.end method
