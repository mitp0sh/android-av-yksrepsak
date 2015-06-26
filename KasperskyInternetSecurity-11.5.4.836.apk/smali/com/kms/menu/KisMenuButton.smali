.class public abstract Lcom/kms/menu/KisMenuButton;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Luz;

.field private final b:I

.field private final c:I

.field private final d:Lcom/kms/menu/KisMenuButton$ButtonId;

.field private e:Z


# direct methods
.method public constructor <init>(Luz;IILcom/kms/menu/KisMenuButton$ButtonId;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/kms/menu/KisMenuButton;->a:Luz;

    .line 55
    iput p2, p0, Lcom/kms/menu/KisMenuButton;->b:I

    .line 56
    iput p3, p0, Lcom/kms/menu/KisMenuButton;->c:I

    .line 57
    iput-object p4, p0, Lcom/kms/menu/KisMenuButton;->d:Lcom/kms/menu/KisMenuButton$ButtonId;

    .line 58
    return-void
.end method

.method public static synthetic a(Lcom/kms/menu/KisMenuButton;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/kms/menu/KisMenuButton;->e:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/kms/menu/KisMenuButton;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/kms/menu/KisMenuButton;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5

    .prologue
    .line 71
    const v0, 0x7f030048

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    invoke-static {}, Lkh;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const v0, 0x3ccccccd    # 0.025f

    invoke-static {p1, v0}, LbI;->b(Landroid/app/Activity;F)I

    move-result v0

    .line 78
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 80
    new-instance v0, Luy;

    invoke-direct {v0, p0}, Luy;-><init>(Lcom/kms/menu/KisMenuButton;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {p1, v0}, LbI;->b(Landroid/app/Activity;F)I

    move-result v2

    .line 92
    const v0, 0x7f0b00df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 93
    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/kms/menu/KisMenuButton;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    const v0, 0x7f0b00e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    iget v2, p0, Lcom/kms/menu/KisMenuButton;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 98
    iget v2, p0, Lcom/kms/menu/KisMenuButton;->b:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    :cond_0
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v2

    const-string v3, "Roboto-Light"

    invoke-virtual {v2, v3}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    invoke-virtual {p0}, Lcom/kms/menu/KisMenuButton;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/kms/menu/KisMenuButton;->d:Lcom/kms/menu/KisMenuButton$ButtonId;

    invoke-virtual {v0}, Lcom/kms/menu/KisMenuButton$ButtonId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    return-object v1

    .line 76
    :cond_1
    const v0, 0x3d0f5c29    # 0.035f

    invoke-static {p1, v0}, LbI;->b(Landroid/app/Activity;F)I

    move-result v0

    goto :goto_0
.end method

.method public abstract a()V
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kms/menu/KisMenuButton;->a:Luz;

    invoke-virtual {v0, p0}, Luz;->a(Lcom/kms/menu/KisMenuButton;)Landroid/view/View;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/kms/menu/KisMenuButton;->e:Z

    .line 135
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kms/menu/KisMenuButton;->a:Luz;

    invoke-virtual {v0, p0}, Luz;->a(Lcom/kms/menu/KisMenuButton;)Landroid/view/View;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/kms/menu/KisMenuButton;->b:I

    return v0
.end method

.method protected final f()Luz;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kms/menu/KisMenuButton;->a:Luz;

    return-object v0
.end method
