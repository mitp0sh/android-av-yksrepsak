.class public final Loo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/kms/gui/controls/secretcode/SecretCodeControl;


# direct methods
.method public constructor <init>(Lcom/kms/gui/controls/secretcode/SecretCodeControl;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Loo;->b:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    iput-object p2, p0, Loo;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 92
    if-eqz p2, :cond_0

    .line 93
    iget-object v0, p0, Loo;->a:Landroid/view/View;

    iget-object v1, p0, Loo;->b:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Loo;->a:Landroid/view/View;

    iget-object v1, p0, Loo;->b:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
