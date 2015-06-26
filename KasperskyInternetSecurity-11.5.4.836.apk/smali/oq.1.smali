.class public final Loq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;


# direct methods
.method public constructor <init>(Lcom/kms/gui/controls/secretcode/SecretCodeControl;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Loq;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 153
    iget-object v2, p0, Loq;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v2}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a()Landroid/widget/EditText;

    move-result-object v2

    .line 154
    if-ge v1, v3, :cond_1

    .line 155
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Loq;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-static {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(Lcom/kms/gui/controls/secretcode/SecretCodeControl;)Lor;

    move-result-object v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lor;->d(Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-ne v1, v3, :cond_2

    .line 158
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 161
    if-lez v1, :cond_0

    .line 162
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 163
    iget-object v1, p0, Loq;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-static {v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(Lcom/kms/gui/controls/secretcode/SecretCodeControl;)Lor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lor;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    const/16 v0, 0xb

    if-ne v1, v0, :cond_3

    .line 167
    iget-object v0, p0, Loq;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-static {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(Lcom/kms/gui/controls/secretcode/SecretCodeControl;)Lor;

    move-result-object v0

    invoke-interface {v0}, Lor;->a()V

    goto :goto_0

    .line 168
    :cond_3
    const/16 v0, 0xc

    if-ne v1, v0, :cond_0

    .line 169
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Loq;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-static {v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(Lcom/kms/gui/controls/secretcode/SecretCodeControl;)Lor;

    move-result-object v1

    invoke-interface {v1, v0}, Lor;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object v0, p0, Loq;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    const v1, 0x7f07019a

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(I)V

    goto :goto_0
.end method
