.class public final Loe;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# instance fields
.field private final a:I

.field private synthetic b:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;


# direct methods
.method public constructor <init>(Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;I)V
    .locals 1

    .prologue
    const/16 v0, 0x17

    .line 202
    iput-object p1, p0, Loe;->b:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    .line 203
    invoke-direct {p0, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 204
    iput v0, p0, Loe;->a:I

    .line 205
    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 208
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    sub-int v1, p6, p5

    sub-int/2addr v0, v1

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    .line 209
    iget-object v1, p0, Loe;->b:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;

    iget v2, p0, Loe;->a:I

    if-le v0, v2, :cond_0

    const v0, 0x7f07016b

    :goto_0
    invoke-static {v1, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a(Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;I)V

    .line 210
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
