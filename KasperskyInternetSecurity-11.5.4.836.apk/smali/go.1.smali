.class public final Lgo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field public d:Landroid/content/pm/ResolveInfo;

.field public e:I

.field private f:I

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lgo;->f:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgo;->g:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgo;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Lgo;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v3, Lgo;

    invoke-direct {v3}, Lgo;-><init>()V

    .line 38
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->b(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lgo;->h:Ljava/util/List;

    .line 39
    invoke-static {p0}, Lcom/kms/kmsshared/Utils;->a(Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, v3, Lgo;->d:Landroid/content/pm/ResolveInfo;

    move v1, v2

    .line 41
    :goto_0
    iget-object v0, v3, Lgo;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 43
    iget-object v0, v3, Lgo;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 44
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 45
    invoke-static {v4}, Lbi;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    iget-object v4, v3, Lgo;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v3, Lgo;->d:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, v3, Lgo;->d:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lgo;->a:Ljava/lang/String;

    .line 52
    iput v1, v3, Lgo;->f:I

    .line 41
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :cond_2
    iget v0, v3, Lgo;->f:I

    if-eq v0, v7, :cond_3

    .line 58
    iget-object v0, v3, Lgo;->h:Ljava/util/List;

    iget v1, v3, Lgo;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lgo;->b:Ljava/lang/String;

    .line 69
    :goto_1
    iget-object v0, v3, Lgo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    .line 70
    :goto_2
    iget-object v0, v3, Lgo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 71
    iget-object v0, v3, Lgo;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    iget-object v4, v3, Lgo;->h:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v4, v3, Lgo;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 60
    :cond_3
    iget-object v0, v3, Lgo;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 62
    iget-object v0, v3, Lgo;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lgo;->b:Ljava/lang/String;

    goto :goto_1

    .line 66
    :cond_4
    const v0, 0x7f070270

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lgo;->b:Ljava/lang/String;

    goto :goto_1

    .line 76
    :cond_5
    const v0, 0x7f07026f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, v3, Lgo;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_6
    iget-object v0, v3, Lgo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    const/4 v0, 0x3

    iput v0, v3, Lgo;->e:I

    .line 100
    :goto_3
    return-object v3

    .line 86
    :cond_7
    iget v0, v3, Lgo;->f:I

    if-ne v0, v7, :cond_8

    iget-object v0, v3, Lgo;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_8

    .line 88
    iput v6, v3, Lgo;->e:I

    goto :goto_3

    .line 90
    :cond_8
    invoke-virtual {v3}, Lgo;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 92
    const/4 v0, 0x2

    iput v0, v3, Lgo;->e:I

    goto :goto_3

    .line 97
    :cond_9
    iput v2, v3, Lgo;->e:I

    goto :goto_3
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lgo;->g:Ljava/util/List;

    iget v1, p0, Lgo;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
