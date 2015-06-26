.class public final Ljr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Ljr;


# instance fields
.field private final b:Lju;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lju;

    invoke-direct {v0}, Lju;-><init>()V

    iput-object v0, p0, Ljr;->b:Lju;

    .line 16
    return-void
.end method

.method public static a()Ljr;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Ljr;->a:Ljr;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljr;

    invoke-direct {v0}, Ljr;-><init>()V

    sput-object v0, Ljr;->a:Ljr;

    .line 26
    :cond_0
    sget-object v0, Ljr;->a:Ljr;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljq;)V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljr;->b:Lju;

    invoke-virtual {v0, p1, p2}, Lju;->a(Ljava/lang/String;Ljq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljq;)V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljr;->b:Lju;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lju;->a(Ljava/lang/String;Ljq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
