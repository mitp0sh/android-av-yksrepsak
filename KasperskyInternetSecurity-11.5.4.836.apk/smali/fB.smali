.class public final LfB;
.super Lfu;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lfu;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lfu;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    .line 16
    return-void
.end method

.method private static e(Landroid/view/View;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f0b015e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .prologue
    .line 25
    const v0, 0x7f03007e

    const v1, 0x7f0b015d

    invoke-static {p1, p2, v0, v1}, LfB;->a(Landroid/view/LayoutInflater;Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    invoke-static {v0}, LfB;->e(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, LfB;->a(Landroid/content/Context;Landroid/view/View;LfK;)V

    .line 31
    invoke-static {v0}, LfB;->e(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 32
    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    invoke-virtual {p0}, LfB;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 34
    iget-boolean v2, p0, LfB;->d:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 35
    return-object v0
.end method

.method public final synthetic b(Landroid/view/View;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 9
    invoke-static {p1}, LfB;->e(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method
