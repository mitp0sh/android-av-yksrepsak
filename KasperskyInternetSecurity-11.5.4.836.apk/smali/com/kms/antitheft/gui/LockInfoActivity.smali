.class public Lcom/kms/antitheft/gui/LockInfoActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockInfoActivity;->finish()V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 29
    invoke-static {}, Lqq;->a()Z

    .line 30
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockInfoActivity;->setTheme(I)V

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockInfoActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 41
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockInfoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 42
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    const/4 v1, 0x1

    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v7, v0

    .line 44
    const v0, 0x7f0b010a

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/LockInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    const v1, 0x7f0b010b

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/LockInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    const v2, 0x7f0b010d

    invoke-virtual {p0, v2}, Lcom/kms/antitheft/gui/LockInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 47
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.kaspersky.kts.LockInfoActivity.title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.kaspersky.kts.LockInfoActivity.info"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "com.kaspersky.kts.LockInfoActivity.ok"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 52
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 53
    if-le v8, v7, :cond_0

    .line 55
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/LockInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 63
    if-nez v4, :cond_1

    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    if-nez v5, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    if-nez v6, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void

    .line 59
    :cond_0
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 63
    goto :goto_1

    :cond_2
    move-object v0, v5

    .line 64
    goto :goto_2

    :cond_3
    move-object v0, v6

    .line 65
    goto :goto_3
.end method
