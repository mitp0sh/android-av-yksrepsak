.class public final LkD;
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
    .line 91
    iput-object p1, p0, LkD;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, LkD;->a:Lcom/kms/activation/gui/RenewalValidationFormActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/RenewalValidationFormActivity;->a(Lcom/kms/activation/gui/RenewalValidationFormActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:if (document.forms[0].onsubmit()){document.forms[0].submit();}"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 94
    return-void
.end method
