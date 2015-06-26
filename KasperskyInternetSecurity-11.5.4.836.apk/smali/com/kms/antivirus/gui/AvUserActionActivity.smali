.class public Lcom/kms/antivirus/gui/AvUserActionActivity;
.super Lcom/kms/gui/KMSCommonUserActionActivity;
.source "SourceFile"


# static fields
.field private static e:Ljava/util/LinkedHashSet;


# instance fields
.field private final a:[I

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/content/ComponentName;

.field private d:LmL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;-><init>()V

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->a:[I

    .line 347
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antivirus/gui/AvUserActionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 343
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 226
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 228
    invoke-static {v3, p1}, Lmx;->a(IZ)V

    .line 234
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->g()V

    .line 235
    return-void

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 230
    invoke-static {v3}, LmE;->a(I)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    if-ne v1, v3, :cond_0

    .line 232
    invoke-interface {v0}, Lmk;->j()Lmy;

    move-result-object v0

    invoke-interface {v0, v3}, Lmy;->a(I)V

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 309
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 311
    neg-int v4, v2

    if-lt v0, v4, :cond_0

    neg-int v4, v2

    if-lt v1, v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->a:[I

    aget v0, v0, p1

    return v0
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 238
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 240
    invoke-static {v3, p1}, Lmx;->a(IZ)V

    .line 246
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->g()V

    .line 247
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    if-ne v1, v3, :cond_2

    .line 242
    invoke-static {v3}, LmE;->a(I)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 244
    invoke-interface {v0}, Lmk;->j()Lmy;

    move-result-object v0

    invoke-interface {v0, v3}, Lmy;->a(I)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 250
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    if-ne v1, v3, :cond_1

    .line 252
    invoke-static {v3, p1}, Lmx;->a(IZ)V

    .line 258
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->g()V

    .line 259
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 254
    invoke-static {v3}, LmE;->a(I)V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 256
    invoke-interface {v0}, Lmk;->j()Lmy;

    move-result-object v0

    invoke-interface {v0, v3}, Lmy;->a(I)V

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, LjJ;->e()Lmk;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 138
    invoke-static {}, Lmx;->h()V

    .line 147
    :cond_0
    :goto_0
    invoke-static {}, LsG;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AvUserActionActivity#continueScanning() must be called from UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 144
    invoke-interface {v0}, Lmk;->j()Lmy;

    move-result-object v0

    invoke-interface {v0}, Lmy;->b()V

    goto :goto_0

    .line 150
    :cond_2
    sget-object v0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antivirus/gui/AvUserActionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->finish()V

    .line 158
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    .line 191
    new-instance v0, LgS;

    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v1, v1, LmL;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v2, v2, LmL;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v4, v4, LmL;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, LgS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lgz;->a(LgH;Landroid/app/Activity;)Z

    .line 193
    return-void
.end method

.method private i()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 196
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v0, v0, LmL;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 208
    :goto_0
    return v0

    .line 199
    :cond_0
    invoke-static {p0}, Lqy;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_2

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 202
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v4, v4, LmL;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    iput-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->c:Landroid/content/ComponentName;

    .line 204
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    const-string v1, "com.kms.gui.helpid"

    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 263
    const v0, 0x7f030014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 264
    const v0, 0x7f0b0063

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 266
    sget-object v1, LmK;->a:[I

    iget-object v3, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v3, v3, LmL;->d:Lcom/kavsdk/antivirus/ThreatType;

    invoke-virtual {v3}, Lcom/kavsdk/antivirus/ThreatType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 276
    const v1, 0x7f0700f9

    .line 278
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v3, v3, LmL;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const v0, 0x7f0b0064

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 281
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v1, v1, LmL;->f:I

    if-ne v1, v4, :cond_2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0700fa

    invoke-virtual {p0, v3}, Lcom/kms/antivirus/gui/AvUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v3, v3, LmL;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_1
    const v0, 0x7f0b0065

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->b:Landroid/widget/CheckBox;

    .line 292
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v0, v0, LmL;->e:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v0, v0, LmL;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->b:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 295
    :cond_1
    return-object v2

    .line 268
    :pswitch_0
    const v1, 0x7f070379

    .line 269
    goto/16 :goto_0

    .line 272
    :pswitch_1
    const v1, 0x7f07037a

    .line 273
    goto/16 :goto_0

    .line 286
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0700fb

    invoke-virtual {p0, v3}, Lcom/kms/antivirus/gui/AvUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v3, v3, LmL;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(I)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 169
    invoke-direct {p0, p1}, Lcom/kms/antivirus/gui/AvUserActionActivity;->b(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 171
    :pswitch_0
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->c(Z)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->h()V

    .line 175
    invoke-direct {p0, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->c(Z)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->b(Z)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->a(Z)V

    goto :goto_0

    .line 185
    :pswitch_3
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->j()V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 318
    const v0, 0x7f060089

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    const-string v0, "com.kms.useraction.info"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LbC;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    :cond_0
    sget-object v0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    :cond_1
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonUserActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->finish()V

    .line 133
    :cond_2
    :goto_0
    return-void

    .line 93
    :cond_3
    sget-object v0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    check-cast v0, LmL;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v0, v0, LmL;->d:Lcom/kavsdk/antivirus/ThreatType;

    sget-object v1, Lcom/kavsdk/antivirus/ThreatType;->Riskware:Lcom/kavsdk/antivirus/ThreatType;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget-object v0, v0, LmL;->d:Lcom/kavsdk/antivirus/ThreatType;

    sget-object v1, Lcom/kavsdk/antivirus/ThreatType;->Adware:Lcom/kavsdk/antivirus/ThreatType;

    if-ne v0, v1, :cond_7

    :cond_4
    move v1, v3

    .line 112
    :goto_2
    if-eqz v1, :cond_8

    const v0, 0x7f07037b

    .line 113
    :goto_3
    iget-object v4, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    iget v4, v4, LmL;->f:I

    if-ne v4, v5, :cond_9

    .line 114
    iget-object v4, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->a:[I

    aput v2, v4, v2

    .line 115
    iget-object v4, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->a:[I

    aput v5, v4, v3

    .line 116
    iget-object v3, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->a:[I

    const/4 v4, 0x3

    aput v4, v3, v5

    .line 117
    const v3, 0x7f0a000c

    invoke-virtual {p0, v0, v3, v2}, Lcom/kms/antivirus/gui/AvUserActionActivity;->a(IIZ)V

    .line 125
    :goto_4
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonUserActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    if-eqz v1, :cond_a

    sget-object v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->Warning:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    :goto_5
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->a(Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;)V

    .line 129
    if-eqz p1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->b:Landroid/widget/CheckBox;

    const-string v1, "CHECKBOX_STATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 97
    :cond_5
    new-instance v0, LmL;

    invoke-direct {v0, p0, v2}, LmL;-><init>(Lcom/kms/antivirus/gui/AvUserActionActivity;B)V

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    .line 98
    iget-object v4, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    const-string v0, "com.kms.useraction.type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/antivirus/ThreatType;

    iput-object v0, v4, LmL;->d:Lcom/kavsdk/antivirus/ThreatType;

    .line 99
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    const-string v4, "com.kms.useraction.launchedfrom"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, LmL;->e:I

    .line 100
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    const-string v4, "com.kms.useraction.mode"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, LmL;->f:I

    .line 101
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    const-string v4, "com.kms.useraction.package"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, LmL;->c:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    const-string v4, "com.kms.useraction.file"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, LmL;->b:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    const-string v4, "com.kms.useraction.info"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LmL;->a:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_6

    .line 106
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    .line 108
    :cond_6
    sget-object v0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:LmL;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 111
    goto/16 :goto_2

    .line 112
    :cond_8
    const v0, 0x7f0700f8

    goto/16 :goto_3

    .line 119
    :cond_9
    iget-object v4, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->a:[I

    aput v2, v4, v2

    .line 120
    iget-object v4, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->a:[I

    aput v3, v4, v3

    .line 121
    iget-object v3, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->a:[I

    aput v5, v3, v5

    .line 122
    const v3, 0x7f0a000b

    invoke-virtual {p0, v0, v3, v2}, Lcom/kms/antivirus/gui/AvUserActionActivity;->a(IIZ)V

    goto/16 :goto_4

    .line 127
    :cond_a
    sget-object v0, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->Error:Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;

    goto/16 :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonUserActionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    const-string v0, "CHECKBOX_STATE"

    iget-object v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/kms/antivirus/gui/AvUserActionActivity;->a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonUserActionActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
