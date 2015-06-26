.class public Lcom/kms/privacyprotection/gui/PPContactsActivity;
.super Lcom/kms/gui/KMSCommonContactsActivity;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Ljava/util/Vector;

.field private e:I

.field private f:Lcom/kms/privacyprotection/PPItemsStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonContactsActivity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    .line 50
    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Landroid/widget/EditText;

    .line 54
    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f:Lcom/kms/privacyprotection/PPItemsStorage;

    .line 466
    return-void
.end method

.method private static a(Ljava/util/Set;)Ljava/util/Vector;
    .locals 8

    .prologue
    .line 153
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 154
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 156
    new-instance v0, Lqr;

    const/4 v1, 0x1

    const v2, 0x7f020072

    const v3, 0x7f020073

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lqr;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    return-object v6
.end method

.method private a(Ljava/lang/Long;)Lqr;
    .locals 7

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v0, p1}, Lcom/kms/privacyprotection/PPItemsStorage;->getContactNameAndPhonesForId(Ljava/lang/Long;)Ljava/util/Vector;

    move-result-object v5

    .line 134
    new-instance v0, Lqr;

    const/4 v1, 0x2

    const v2, 0x7f02005c

    const v3, 0x7f02005d

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lqr;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->p()V

    return-void
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PPContactsActivity;J)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(J)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PPContactsActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->r()Llv;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v0, p1}, Llv;->c(Ljava/lang/String;)Z

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/privacyprotection/gui/PPContactsActivity;J)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(J)V

    return-void
.end method

.method private b(J)Z
    .locals 2

    .prologue
    .line 353
    invoke-static {}, LuR;->a()LuR;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, LuR;->d(Landroid/content/Context;J)Ljava/util/Set;

    move-result-object v0

    .line 354
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    invoke-direct {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Lcom/kms/privacyprotection/PPItemsStorage;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f:Lcom/kms/privacyprotection/PPItemsStorage;

    return-object v0
.end method

.method public static synthetic d(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->l()V

    return-void
.end method

.method public static synthetic e(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->q()V

    return-void
.end method

.method public static synthetic f(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic g(Lcom/kms/privacyprotection/gui/PPContactsActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:I

    return v0
.end method

.method public static synthetic h(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->d:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic i(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->l()V

    return-void
.end method

.method private n()Ljava/util/Vector;
    .locals 7

    .prologue
    .line 99
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 100
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->o()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->getPhones()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(Ljava/util/Set;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 128
    return-object v1

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->getContactsIds()Ljava/util/Vector;

    move-result-object v0

    .line 109
    invoke-static {}, LuR;->a()LuR;

    move-result-object v2

    .line 110
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 112
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, LuR;->c(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, LuR;->a(Landroid/content/Context;Ljava/lang/Long;)Lqr;

    move-result-object v0

    .line 121
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(Ljava/lang/Long;)Lqr;

    move-result-object v0

    goto :goto_1
.end method

.method private o()Ljava/util/Vector;
    .locals 8

    .prologue
    .line 140
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->getContactNamesAndPhones()Ljava/util/Map;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Map$Entry;

    .line 144
    new-instance v0, Lqr;

    const/4 v1, 0x2

    const v2, 0x7f02005c

    const v3, 0x7f02005d

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lqr;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    return-object v6
.end method

.method private p()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->removeAll()V

    .line 299
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->l()V

    .line 300
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    .line 350
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqr;

    .line 307
    iput p1, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:I

    .line 308
    iget v0, v0, Lqr;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 310
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    .line 166
    return-void
.end method

.method protected final b(I)Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(I)V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->n()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->d:Ljava/util/Vector;

    .line 509
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->d:Ljava/util/Vector;

    return-object v0
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v0

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    const/16 v1, 0x15

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method protected final j()Z
    .locals 1

    .prologue
    .line 514
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final k()Z
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a:LsY;

    invoke-interface {v0}, LsY;->a()LaC;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1}, LaC;->a(I)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 321
    invoke-super {p0, p1, p2, p3}, Lcom/kms/gui/KMSCommonContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 323
    packed-switch p1, :pswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 326
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 328
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 329
    invoke-static {}, LuR;->a()LuR;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LuR;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 330
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v2, v0, v1}, Lcom/kms/privacyprotection/PPItemsStorage;->contactInList(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    invoke-direct {p0, v0, v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v2, v0, v1}, Lcom/kms/privacyprotection/PPItemsStorage;->AddContact(J)V

    .line 335
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->o(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->l()V

    goto :goto_0

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->q()V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->f:Lcom/kms/privacyprotection/PPItemsStorage;

    .line 59
    const v0, 0x7f07010b

    const v1, 0x7f07010d

    const v2, 0x7f020074

    const v3, 0x7f020075

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(IIII)V

    .line 63
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0b0104

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    const v1, 0x7f07010e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->l()V

    .line 67
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->h()V

    .line 69
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0b0073

    invoke-virtual {p0, v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 71
    const v1, 0x7f0b0074

    invoke-virtual {p0, v1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 73
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 78
    const v2, 0x7f0701b1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 79
    const v0, 0x7f020060

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 84
    const v2, 0x7f0701b0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    const v0, 0x7f02007e

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    const v2, 0x7f070189

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 177
    .line 178
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 274
    :goto_0
    return-object v0

    .line 182
    :pswitch_0
    new-instance v0, Lvs;

    invoke-direct {v0, p0, v3}, Lvs;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V

    .line 184
    new-instance v1, LoN;

    invoke-direct {v1, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07010f

    invoke-virtual {v1, v2}, LoN;->a(I)LoN;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2, v0}, LoN;->d(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v1

    const v2, 0x7f070110

    invoke-virtual {v1, v2, v0}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 195
    :pswitch_1
    new-instance v6, Lvp;

    invoke-direct {v6, p0, v3}, Lvp;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V

    .line 196
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 199
    const v2, 0x7f030099

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 200
    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Landroid/widget/EditText;

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v5, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v2, v0

    .line 204
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070111

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    move-result-object v0

    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Landroid/widget/EditText;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, LoN;->a(Landroid/view/View;IIII)LoN;

    move-result-object v0

    const v1, 0x7f070112

    invoke-virtual {v0, v1, v6}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v1, 0x7f070113

    invoke-virtual {v0, v1, v6}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_2
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, LoN;->a(I)LoN;

    move-result-object v0

    const v1, 0x7f0a000d

    new-instance v2, Lvq;

    invoke-direct {v2, p0, v3}, Lvq;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V

    invoke-virtual {v0, v1, v2}, LoN;->d(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 222
    :pswitch_3
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, LoN;->a(I)LoN;

    move-result-object v0

    const v1, 0x7f0a000e

    new-instance v2, Lvr;

    invoke-direct {v2, p0, v3}, Lvr;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V

    invoke-virtual {v0, v1, v2}, LoN;->d(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 230
    :pswitch_4
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, LoN;->a(I)LoN;

    move-result-object v0

    const v2, 0x7f070186

    invoke-virtual {v0, v2}, LoN;->b(I)LoN;

    move-result-object v0

    const v2, 0x7f070187

    new-instance v3, Lvn;

    invoke-direct {v3, p0}, Lvn;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    invoke-virtual {v0, v2, v3}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v2, 0x7f070188

    invoke-virtual {v0, v2, v1}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 247
    :pswitch_5
    new-instance v6, Lvo;

    invoke-direct {v6, p0, v3}, Lvo;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;B)V

    .line 248
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 250
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 251
    const v2, 0x7f030099

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 252
    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v5, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v2, v0

    .line 256
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07018a

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    move-result-object v0

    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, LoN;->a(Landroid/view/View;IIII)LoN;

    move-result-object v0

    const v1, 0x7f070112

    invoke-virtual {v0, v1, v6}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    const v1, 0x7f070113

    invoke-virtual {v0, v1, v6}, LoN;->b(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 266
    :pswitch_6
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07018b

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    move-result-object v0

    const v1, 0x7f07018c

    invoke-virtual {v0, v1}, LoN;->b(I)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v0

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3

    .prologue
    .line 280
    sparse-switch p1, :sswitch_data_0

    .line 293
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSCommonContactsActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 294
    return-void

    .line 284
    :sswitch_0
    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->d:Ljava/util/Vector;

    iget v2, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqr;

    iget-object v0, v0, Lqr;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 289
    :sswitch_1
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
