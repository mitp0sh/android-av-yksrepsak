.class public final LvG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaO;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LvG;->c:Ljava/util/Set;

    .line 34
    iput-object p1, p0, LvG;->a:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private static a(Landroid/app/ActivityManager;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 81
    iget v2, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v2, p1, :cond_0

    .line 83
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 86
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 39
    const-string v0, "from pid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 40
    if-gez v0, :cond_0

    move v0, v1

    .line 58
    :goto_0
    return v0

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x8

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 49
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LvG;->a:Landroid/content/Context;

    const-class v2, Lcom/kms/selfprotection/gui/UninstallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    const-string v1, "com.kms.uninstall.blockedapp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, LvG;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    iget-object v2, p0, LvG;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 103
    if-gez v3, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    move v0, v1

    .line 111
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "activitymanager"

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 122
    const-string v0, "intent.action.DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, LvG;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->q()Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    invoke-static {p1}, LvG;->c(Ljava/lang/String;)I

    move-result v2

    .line 132
    const/4 v0, -0x1

    if-eq v2, v0, :cond_2

    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne v2, v0, :cond_0

    move v0, v1

    .line 197
    :goto_0
    return v0

    .line 140
    :cond_0
    iget-object v0, p0, LvG;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 141
    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 142
    invoke-static {v0, v2}, LvG;->a(Landroid/app/ActivityManager;I)Ljava/lang/String;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_1

    .line 145
    invoke-static {v0, v2}, Lcom/kms/kmsshared/Utils;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, LvG;->c:Ljava/util/Set;

    monitor-enter v3

    .line 148
    :try_start_0
    iget-object v0, p0, LvG;->c:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-direct {p0, v2}, LvG;->d(Ljava/lang/String;)V

    .line 169
    :goto_1
    iput-boolean v1, p0, LvG;->b:Z

    move v0, v1

    .line 171
    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 154
    :cond_1
    iget-object v2, p0, LvG;->c:Ljava/util/Set;

    monitor-enter v2

    .line 156
    :try_start_1
    iget-object v0, p0, LvG;->c:Ljava/util/Set;

    const-string v3, "com.android.settings"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    const-string v0, "com.android.settings"

    invoke-direct {p0, v0}, LvG;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 163
    :cond_2
    iget-object v2, p0, LvG;->c:Ljava/util/Set;

    monitor-enter v2

    .line 165
    :try_start_2
    iget-object v0, p0, LvG;->c:Ljava/util/Set;

    const-string v3, "com.android.settings"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 167
    const-string v0, "com.android.settings"

    invoke-direct {p0, v0}, LvG;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    .line 174
    :cond_3
    iget-boolean v0, p0, LvG;->b:Z

    if-nez v0, :cond_4

    move v0, v2

    .line 176
    goto :goto_0

    .line 178
    :cond_4
    iget-object v3, p0, LvG;->c:Ljava/util/Set;

    monitor-enter v3

    .line 180
    :try_start_3
    iget-object v0, p0, LvG;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 182
    const-string v0, "Starting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 184
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 187
    :cond_5
    iget-object v0, p0, LvG;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cmp="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 191
    invoke-direct {p0, v0}, LvG;->d(Ljava/lang/String;)V

    .line 192
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v0, v1

    goto/16 :goto_0

    .line 196
    :cond_7
    monitor-exit v3

    move v0, v2

    .line 197
    goto/16 :goto_0

    .line 196
    :catchall_3
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, LvG;->c:Ljava/util/Set;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, LvG;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    iget-object v2, p0, LvG;->c:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 70
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
