.class public abstract LsA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(LsA;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, LsA;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->x()LrW;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v1}, LrW;->a()Z

    .line 63
    :cond_0
    invoke-static {}, LjJ;->i()LkM;

    move-result-object v1

    invoke-interface {v1}, LkM;->f()V

    .line 64
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->k()V

    .line 66
    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, LsA;->b()V

    .line 50
    invoke-static {}, LsA;->c()V

    .line 51
    invoke-static {p1}, Lqy;->g(Landroid/content/Context;)V

    .line 52
    invoke-static {p1}, LsA;->c(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 54
    return-void
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 69
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    .line 70
    if-eqz v1, :cond_0

    .line 71
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 72
    invoke-virtual {v1, v0}, Lrq;->b(I)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 82
    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 89
    if-eqz v0, :cond_1

    .line 90
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 91
    if-eqz v6, :cond_0

    .line 92
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 95
    if-eqz v0, :cond_1

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    .line 100
    new-instance v6, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v2

    .line 103
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 104
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v7, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 107
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v3, v0, v7, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 109
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, LsA;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 34
    new-instance v0, LsB;

    invoke-direct {v0, p0, p1}, LsB;-><init>(LsA;Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method
