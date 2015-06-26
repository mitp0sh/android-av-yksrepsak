.class public final Lip;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lip;


# instance fields
.field private final b:Liq;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Liq;

    invoke-direct {v0}, Liq;-><init>()V

    iput-object v0, p0, Lip;->b:Liq;

    .line 28
    return-void
.end method

.method public static a()Lip;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lip;->a:Lip;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lip;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lip;->a:Lip;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lip;

    invoke-direct {v0}, Lip;-><init>()V

    sput-object v0, Lip;->a:Lip;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lip;->a:Lip;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lip;->b:Liq;

    invoke-virtual {v0}, Liq;->a()Z

    move-result v0

    return v0
.end method
