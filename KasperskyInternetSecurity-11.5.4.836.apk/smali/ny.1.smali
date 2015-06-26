.class final Lny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:Lnv;


# direct methods
.method constructor <init>(Lnv;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lny;->b:Lnv;

    iput-object p2, p0, Lny;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lny;->b:Lnv;

    check-cast p1, LoM;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, LoM;->a(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lnv;->a(Lnv;Landroid/widget/Button;)Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lny;->b:Lnv;

    invoke-static {v0}, Lnv;->c(Lnv;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lny;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lny;->a:Landroid/widget/CheckBox;

    new-instance v1, LnA;

    iget-object v2, p0, Lny;->b:Lnv;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LnA;-><init>(Lnv;B)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    return-void
.end method
