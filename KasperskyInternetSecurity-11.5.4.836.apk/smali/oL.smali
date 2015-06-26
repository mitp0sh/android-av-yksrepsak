.class public final LoL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LoL;->a(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Z)V

    .line 22
    return-void
.end method

.method private static a(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Z)V
    .locals 1

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    if-nez p3, :cond_1

    .line 38
    invoke-virtual {p0, p2, p1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 42
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 54
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public static b(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LoL;->a(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Z)V

    .line 26
    return-void
.end method
