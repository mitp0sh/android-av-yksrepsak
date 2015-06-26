.class public LrX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LrW;


# static fields
.field private static final a:Ljava/lang/String;

.field private static synthetic e:Z


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:LrT;

.field private final d:LrU;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, LrX;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LrX;->e:Z

    .line 18
    const-class v0, LrX;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LrX;->a:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(LrT;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LrX;->b:Ljava/util/Map;

    .line 35
    new-instance v0, LrR;

    invoke-direct {v0}, LrR;-><init>()V

    iput-object v0, p0, LrX;->d:LrU;

    .line 46
    iput-object p1, p0, LrX;->c:LrT;

    .line 47
    return-void
.end method

.method private b(Ljava/lang/Class;)Z
    .locals 4

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v2, v0, LrV;

    if-eqz v2, :cond_0

    .line 90
    check-cast v0, LrV;

    .line 92
    iget-object v2, p0, LrX;->c:LrT;

    iget-object v3, p0, LrX;->d:LrU;

    invoke-interface {v0, v2, v3}, LrV;->a(LrT;LrU;)V

    .line 94
    iget-object v2, p0, LrX;->b:Ljava/util/Map;

    invoke-interface {v0}, LrV;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 103
    :goto_1
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    sget-object v2, LrX;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    sget-object v2, LrX;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)LrS;
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, LrX;->b:Ljava/util/Map;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, LrX;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrS;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LrS;
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, LrX;->b:Ljava/util/Map;

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-direct {p0, p1}, LrX;->d(Ljava/lang/String;)LrS;

    move-result-object v0

    check-cast v0, LrV;

    .line 120
    if-eqz v0, :cond_0

    invoke-interface {v0}, LrV;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, LrX;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    invoke-virtual {p0, v0}, LrX;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 192
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/Class;)Z
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, LrX;->b:Ljava/util/Map;

    monitor-enter v1

    .line 77
    :try_start_0
    invoke-direct {p0, p1}, LrX;->b(Ljava/lang/Class;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, LrX;->b:Ljava/util/Map;

    monitor-enter v2

    .line 146
    :try_start_0
    invoke-direct {p0, p1}, LrX;->d(Ljava/lang/String;)LrS;

    move-result-object v0

    check-cast v0, LrV;

    .line 147
    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0}, LrV;->b()Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    iget-object v1, p0, LrX;->c:LrT;

    invoke-interface {v0, v1}, LrV;->a(LrT;)V

    .line 151
    sget-boolean v1, LrX;->e:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, LrV;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Developer error: plugin must be enabled after call enable()!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    .line 158
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 160
    return v0

    .line 156
    :cond_1
    sget-object v0, LrX;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trying to enable plugin which was not added, may be because of error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kms/kmsshared/KMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    iget-object v2, p0, LrX;->b:Ljava/util/Map;

    monitor-enter v2

    .line 168
    :try_start_0
    invoke-direct {p0, p1}, LrX;->d(Ljava/lang/String;)LrS;

    move-result-object v0

    check-cast v0, LrV;

    .line 169
    if-eqz v0, :cond_1

    invoke-interface {v0}, LrV;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v1, p0, LrX;->c:LrT;

    invoke-interface {v0, v1}, LrV;->b(LrT;)V

    .line 175
    sget-boolean v1, LrX;->e:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, LrV;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Developer error: plugin must be disabled after call disable()!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 177
    :cond_0
    const/4 v0, 0x1

    .line 179
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
