.class public final Lcom/kms/gui/controls/secretcode/SecretCodeChecker;
.super Log;
.source "SourceFile"


# instance fields
.field private a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

.field private b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

.field private final c:Loj;

.field private final d:Landroid/support/v4/app/DialogFragment;

.field private final e:Lon;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;Loj;Landroid/support/v4/app/DialogFragment;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Log;-><init>()V

    .line 25
    new-instance v0, Lon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lon;-><init>(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;B)V

    iput-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->e:Lon;

    .line 31
    iput-object p1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    .line 32
    iput-object p2, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->c:Loj;

    .line 33
    iput-object p3, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->d:Landroid/support/v4/app/DialogFragment;

    .line 34
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;)Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;)Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Loj;Landroid/support/v4/app/DialogFragment;)Lcom/kms/gui/controls/secretcode/SecretCodeControl;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-direct {v0, p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v1, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;

    sget-object v2, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->EnterMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-direct {v1, v2, p1, p2}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;-><init>(Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;Loj;Landroid/support/v4/app/DialogFragment;)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Lcom/kms/gui/controls/secretcode/SecretCodeControl;)V

    .line 44
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;I)V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 292
    :cond_0
    iput-object p1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->f:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->c:Loj;

    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->e:Lon;

    invoke-interface {v0, v1}, Loj;->a(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 296
    :cond_1
    iput-object p2, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    .line 297
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 298
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->g:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->setPassword(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;Z)Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->h:Z

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 242
    new-instance v0, LoN;

    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    .line 243
    const v1, 0x7f0a002a

    new-instance v2, Lok;

    invoke-direct {v2, p0}, Lok;-><init>(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;)V

    invoke-virtual {v0, v1, v2}, LoN;->d(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 260
    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    invoke-virtual {v0}, LoM;->show()V

    .line 261
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 264
    new-instance v0, LoN;

    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LoN;-><init>(Landroid/content/Context;)V

    .line 265
    const v1, 0x7f0a002b

    new-instance v2, Lol;

    invoke-direct {v2, p0}, Lol;-><init>(Lcom/kms/gui/controls/secretcode/SecretCodeChecker;)V

    invoke-virtual {v0, v1, v2}, LoN;->d(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    .line 282
    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    invoke-virtual {v0}, LoM;->show()V

    .line 283
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 305
    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    const v2, 0x7f07019b

    invoke-virtual {v1, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(I)V

    .line 312
    :goto_0
    return v0

    .line 308
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    .line 309
    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    const v2, 0x7f07019c

    invoke-virtual {v1, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(I)V

    goto :goto_0

    .line 312
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lom;->a:[I

    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-virtual {v1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    invoke-direct {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->e()V

    .line 150
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-direct {p0}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->d()V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/kms/gui/controls/secretcode/SecretCodeControl;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    .line 49
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0, p0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(Lor;)V

    .line 50
    return-void
.end method

.method public final a(Z)V
    .locals 10

    .prologue
    const v9, 0x7f070193

    const/16 v3, 0x8

    const v8, 0x7f0701a9

    const/4 v7, 0x0

    const v6, 0x7f0701a8

    .line 154
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    const v1, 0x7f0b00c0

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    sget-object v2, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ShowMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    if-ne v1, v2, :cond_2

    .line 156
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    const v1, 0x7f0b00c2

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    const v2, 0x7f0b00c3

    invoke-virtual {v1, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v2}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a()Landroid/widget/EditText;

    move-result-object v2

    .line 166
    if-eqz p1, :cond_1

    .line 167
    const-string v3, ""

    iput-object v3, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->g:Ljava/lang/String;

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    const v3, 0x7f0b00d4

    invoke-virtual {v2, v3}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 172
    if-eqz v0, :cond_3

    .line 174
    iget-object v3, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v3}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 176
    sget-object v4, Lom;->a:[I

    iget-object v5, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-virtual {v5}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong mode!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 179
    :pswitch_0
    const v3, 0x7f070195

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 180
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 181
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    :cond_3
    :goto_1
    return-void

    .line 185
    :pswitch_1
    const v3, 0x7f070196

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 186
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    .line 187
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 191
    :pswitch_2
    iget-boolean v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->h:Z

    if-eqz v1, :cond_4

    .line 192
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0, v9}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b(I)V

    .line 196
    :goto_2
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 194
    :cond_4
    const v1, 0x7f070192

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 200
    :pswitch_3
    const v1, 0x7f0701f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 201
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 205
    :pswitch_4
    const v1, 0x7f0701f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 210
    :pswitch_5
    iget-boolean v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->h:Z

    if-eqz v1, :cond_5

    .line 211
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0, v9}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b(I)V

    .line 215
    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 213
    :cond_5
    const v1, 0x7f070191

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 219
    :pswitch_6
    iget-boolean v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->h:Z

    if-eqz v1, :cond_6

    .line 220
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    const v1, 0x7f070194

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b(I)V

    .line 224
    :goto_4
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 222
    :cond_6
    const v1, 0x7f0701f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 228
    :pswitch_7
    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    const v3, 0x7f0b00c1

    invoke-virtual {v1, v3}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 229
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v3

    invoke-virtual {v3}, Lsj;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v1, 0x7f07037f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public final b()Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->h:Z

    .line 324
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f070198

    const v4, 0x7f070197

    const v3, 0x7f070193

    const/4 v2, 0x1

    .line 54
    sget-object v0, Lom;->a:[I

    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    invoke-virtual {v1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong mode!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_0
    sget-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->RepeatMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    const v1, 0x7f070196

    invoke-direct {p0, p1, v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Ljava/lang/String;Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;I)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_1
    sget-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->RepeatNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    const v1, 0x7f0701f6

    invoke-direct {p0, p1, v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Ljava/lang/String;Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;I)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->f(Ljava/lang/String;)Z

    .line 67
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0, v5}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(I)V

    .line 68
    invoke-static {}, Lqz;->c()V

    .line 69
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->c:Loj;

    invoke-interface {v0}, Loj;->a()V

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->a(I)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0, v4}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(I)V

    .line 73
    sget-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    iput-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    .line 74
    iput-object v6, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->f:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Z)V

    goto :goto_0

    .line 81
    :pswitch_3
    invoke-static {p1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {}, Lqz;->c()V

    .line 86
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->c:Loj;

    invoke-interface {v0}, Loj;->a()V

    .line 87
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->d:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->d:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0, v3}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b(I)V

    goto :goto_0

    .line 102
    :pswitch_4
    invoke-static {p1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    sget-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    iput-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->g:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    iget-object v1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->setPassword(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0701f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0, v3}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b(I)V

    goto :goto_0

    .line 113
    :pswitch_5
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/kms/kmsshared/Utils;->f(Ljava/lang/String;)Z

    .line 115
    invoke-static {}, Lqz;->c()V

    .line 116
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0, v5}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(I)V

    .line 117
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->c:Loj;

    invoke-interface {v0}, Loj;->a()V

    goto/16 :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    invoke-virtual {v0, v4}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->a(I)V

    .line 120
    sget-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->SetNewMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    iput-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    .line 121
    iput-object v6, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->f:Ljava/lang/String;

    .line 122
    invoke-virtual {p0, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Z)V

    goto/16 :goto_0

    .line 127
    :pswitch_6
    invoke-static {p1}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    sget-object v0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;->ShowMasterKey:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    iput-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->b:Lcom/kms/gui/controls/secretcode/SecretCodeChecker$SecretCodeMode;

    .line 130
    invoke-virtual {p0, v2}, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a(Z)V

    goto/16 :goto_0

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->a:Lcom/kms/gui/controls/secretcode/SecretCodeControl;

    const v1, 0x7f070194

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/secretcode/SecretCodeControl;->b(I)V

    goto/16 :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->g:Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/controls/secretcode/SecretCodeChecker;->h:Z

    .line 319
    return-void
.end method
