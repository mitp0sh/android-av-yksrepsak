.class public Lcom/kms/gui/controls/Warning;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kms/gui/controls/Warning;->a(Landroid/content/Context;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object v0, Lng;->Caption:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    invoke-direct {p0, p1, v1}, Lcom/kms/gui/controls/Warning;->a(Landroid/content/Context;I)V

    .line 32
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/text/SpannableStringBuilder;
    .locals 5

    .prologue
    .line 68
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 72
    new-instance v3, Loa;

    invoke-direct {v3, p2}, Loa;-><init>(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 81
    return-object v0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    const v1, 0x7f0300ac

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    const v0, 0x7f0b01f0

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/Warning;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/controls/Warning;->a:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lcom/kms/gui/controls/Warning;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, p2}, Lcom/kms/gui/controls/Warning;->setMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public setMessage(I)V
    .locals 1

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/kms/gui/controls/Warning;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    :cond_0
    return-void
.end method

.method public setMessageWithClickablePart(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 54
    invoke-static {p1}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lra;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/kms/gui/controls/Warning;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 58
    iget-object v0, p0, Lcom/kms/gui/controls/Warning;->a:Landroid/widget/TextView;

    invoke-static {p1, p2, p3}, Lcom/kms/gui/controls/Warning;->a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/controls/Warning;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
