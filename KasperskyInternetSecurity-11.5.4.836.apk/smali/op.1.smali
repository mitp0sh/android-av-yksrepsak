.class public final Lop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/widget/EditText;

.field private synthetic d:Lcom/kms/gui/controls/secretcode/SecretCodeControl;


# direct methods
.method public constructor <init>(Lcom/kms/gui/controls/secretcode/SecretCodeControl;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lop;->d:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    iput-object p2, p0, Lop;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lop;->b:Ljava/lang/String;

    iput-object p4, p0, Lop;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lop;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lop;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lop;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
