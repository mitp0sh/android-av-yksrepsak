.class public final LkC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/activation/gui/RenewalValidationFormActivity;


# direct methods
.method public constructor <init>(Lcom/kms/activation/gui/RenewalValidationFormActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, LkC;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, LkC;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->setResult(I)V

    .line 83
    iget-object v0, p0, LkC;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-virtual {v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->finish()V

    .line 84
    return-void
.end method
