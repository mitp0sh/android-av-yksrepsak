.class final LfS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfW;


# instance fields
.field private synthetic a:Landroid/widget/ImageView;

.field private synthetic b:Landroid/widget/ImageView;

.field private synthetic c:Lcom/kaspersky/kts/gui/wizard/WizardScrollView;

.field private synthetic d:LfR;


# direct methods
.method constructor <init>(LfR;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/kaspersky/kts/gui/wizard/WizardScrollView;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, LfS;->d:LfR;

    iput-object p2, p0, LfS;->a:Landroid/widget/ImageView;

    iput-object p3, p0, LfS;->b:Landroid/widget/ImageView;

    iput-object p4, p0, LfS;->c:Lcom/kaspersky/kts/gui/wizard/WizardScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 148
    iget-object v3, p0, LfS;->a:Landroid/widget/ImageView;

    if-gtz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, LfS;->b:Landroid/widget/ImageView;

    iget-object v3, p0, LfS;->c:Lcom/kaspersky/kts/gui/wizard/WizardScrollView;

    invoke-virtual {v3, v2}, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, p1

    iget-object v4, p0, LfS;->c:Lcom/kaspersky/kts/gui/wizard/WizardScrollView;

    invoke-virtual {v4}, Lcom/kaspersky/kts/gui/wizard/WizardScrollView;->getMeasuredHeight()I

    move-result v4

    if-gt v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    :cond_1
    move v1, v2

    .line 152
    goto :goto_1
.end method
