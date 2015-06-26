.class public final Lwi;
.super LvO;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lwd;)V
    .locals 2

    .prologue
    .line 11
    const-class v0, LvT;

    const v1, 0x7f03004b

    invoke-direct {p0, p1, v0, v1}, LvO;-><init>(Lwd;Ljava/lang/Class;I)V

    .line 12
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 16
    const v0, 0x7f0b00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 17
    invoke-virtual {p0}, Lwi;->c()Lwd;

    move-result-object v1

    invoke-interface {v1}, Lwd;->getNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 18
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p2}, Lwi;->a(Landroid/view/View;)V

    return-void
.end method
