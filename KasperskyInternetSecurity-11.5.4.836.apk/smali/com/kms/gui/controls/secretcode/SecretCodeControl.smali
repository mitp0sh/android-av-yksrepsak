.class public Lcom/kms/gui/controls/secretcode/SecretCodeControl;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lor;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->d:I

    .line 33
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/controls/secretcode/SecretCodeControl;)Lor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a:Lor;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 87
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b:Landroid/widget/EditText;

    new-instance v2, Loo;

    invoke-direct {v2, p0, v0}, Loo;-><init>(Lcom/kms/gui/controls/secretcode/SecretCodeControl;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    return-void
.end method

.method public final a(Lor;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a:Lor;

    .line 37
    invoke-virtual {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->c()V

    .line 38
    return-void
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b(I)V
    .locals 5

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b()Landroid/widget/TextView;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\"#ff8080\">"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a()Landroid/widget/EditText;

    move-result-object v1

    .line 120
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a:Lor;

    const-string v4, ""

    invoke-interface {v2, v4}, Lor;->d(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a:Lor;

    invoke-interface {v2}, Lor;->c()V

    .line 123
    new-instance v2, Lop;

    invoke-direct {v2, p0, v0, v3, v1}, Lop;-><init>(Lcom/kms/gui/controls/secretcode/SecretCodeControl;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 50
    iget v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->d:I

    if-eq v1, v0, :cond_0

    .line 51
    iput v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->d:I

    .line 53
    packed-switch v0, :pswitch_data_0

    .line 58
    const v0, 0x7f030043

    move v1, v0

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->removeAllViews()V

    .line 61
    invoke-virtual {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->c:Landroid/widget/TextView;

    .line 66
    new-instance v0, Loq;

    invoke-direct {v0, p0}, Loq;-><init>(Lcom/kms/gui/controls/secretcode/SecretCodeControl;)V

    .line 67
    const v1, 0x7f0b00c5

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f0b00d3

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f0b0043

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f0b00c8

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f0b00ca

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0b00cb

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f0b00cc

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0b00ce

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v1, 0x7f0b00cf

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f0b00d0

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f0b00d2

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f0b00d4

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a:Lor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lor;->a(Z)V

    .line 81
    invoke-direct {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->d()V

    .line 82
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 84
    :cond_0
    return-void

    .line 55
    :pswitch_0
    const v0, 0x7f030044

    move v1, v0

    .line 56
    goto/16 :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method
