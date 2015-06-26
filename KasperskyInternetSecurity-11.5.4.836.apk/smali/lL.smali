.class public final LlL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;


# direct methods
.method private constructor <init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, LlL;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, LlL;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const v4, 0x7f0b0051

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, LlL;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 56
    iget-object v3, p0, LlL;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 57
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 60
    :goto_0
    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, LlL;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0, v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 57
    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, LlL;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0, v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
