.class public abstract Lnm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lnm;->a(Landroid/app/Activity;Landroid/view/View;I)V

    .line 12
    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 16
    const v0, 0x7f0b00ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_0
    if-eqz p2, :cond_3

    .line 24
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    new-instance v0, Lnn;

    invoke-direct {v0, p0, p2}, Lnn;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 21
    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
