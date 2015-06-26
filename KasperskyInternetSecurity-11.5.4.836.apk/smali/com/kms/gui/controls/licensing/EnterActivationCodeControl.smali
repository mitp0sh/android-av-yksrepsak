.class public Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements LeK;


# instance fields
.field private a:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lod;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    sget-object v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterNewCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->b:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->c:Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterNewCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->b:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->c:Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 140
    if-eqz p1, :cond_0

    .line 141
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->j:Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->j:Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    const v1, 0x7f03002a

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->f:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->d:Landroid/widget/CheckBox;

    .line 66
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->g:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->h:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->i:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->j:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    new-instance v1, LnY;

    const/4 v2, 0x6

    const-string v3, "-"

    invoke-direct {v1, v2, v3}, LnY;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    new-array v0, v4, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Loe;

    const/16 v3, 0x17

    invoke-direct {v2, p0, v3}, Loe;-><init>(Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;I)V

    aput-object v2, v0, v1

    .line 80
    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 82
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;)V
    .locals 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    .line 165
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->k:Lod;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->k:Lod;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    invoke-interface {v0, v1}, Lod;->a(Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;)V

    .line 168
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a(I)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    sget-object v1, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterNewCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    if-ne v0, v1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->b:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->b:Ljava/lang/String;

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->d()V

    goto :goto_0

    .line 108
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->c:Ljava/lang/String;

    .line 113
    :goto_1
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->k:Lod;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->k:Lod;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lod;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->b:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->d:Landroid/widget/CheckBox;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->j:Landroid/widget/TextView;

    aput-object v1, v0, v3

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 124
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->i:Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->f:Landroid/widget/Button;

    const v1, 0x7f070151

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 127
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->g:Landroid/widget/TextView;

    const v1, 0x7f07014a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->h:Landroid/widget/TextView;

    const v1, 0x7f07014c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    sget-object v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterOldCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    invoke-direct {p0, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a(Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;)V

    .line 131
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->c:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e:Landroid/widget/EditText;

    const v1, 0x7f07014d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->d:Landroid/widget/CheckBox;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->i:Landroid/widget/TextView;

    aput-object v1, v0, v3

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 154
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->j:Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->f:Landroid/widget/Button;

    const v1, 0x7f070150

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 157
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->g:Landroid/widget/TextView;

    const v1, 0x7f070149

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->h:Landroid/widget/TextView;

    const v1, 0x7f07014b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    sget-object v0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterNewCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    invoke-direct {p0, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a(Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;)V

    .line 161
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    sget-object v1, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;->EnterOldCode:Lcom/kms/gui/controls/licensing/EnterActivationCodeControl$EnterCodeMode;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e()V

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->e()V

    .line 135
    const v0, 0x7f07016a

    invoke-direct {p0, v0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->a(I)V

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->i:Landroid/widget/TextView;

    aput-object v2, v0, v1

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-direct {p0}, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->c()V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x7f0b009e
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public setOnCodeEnteredListener(Lod;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kms/gui/controls/licensing/EnterActivationCodeControl;->k:Lod;

    .line 87
    return-void
.end method
