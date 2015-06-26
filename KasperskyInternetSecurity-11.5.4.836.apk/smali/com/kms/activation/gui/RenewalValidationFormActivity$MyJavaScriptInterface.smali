.class public Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/kms/activation/gui/RenewalValidationFormActivity;


# direct methods
.method constructor <init>(Lcom/kms/activation/gui/RenewalValidationFormActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processHTML(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    new-instance v1, LkE;

    invoke-direct {v1, p0, p1}, LkE;-><init>(Lcom/kms/activation/gui/RenewalValidationFormActivity$MyJavaScriptInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
