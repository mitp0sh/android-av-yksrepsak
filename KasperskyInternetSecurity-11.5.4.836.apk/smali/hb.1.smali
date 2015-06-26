.class public final Lhb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lhb;


# instance fields
.field private a:LhF;

.field private b:LhT;

.field private c:LhS;

.field private volatile d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lhb;->e:Lhb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;J)I
    .locals 3

    .prologue
    .line 80
    const/4 v0, -0x3

    .line 81
    iget-object v1, p0, Lhb;->c:LhS;

    invoke-virtual {v1}, LhS;->c()LhM;

    move-result-object v1

    .line 83
    const/4 v2, 0x1

    invoke-interface {v1, v2}, LhM;->a(I)V

    .line 84
    invoke-interface {v1, p1}, LhM;->a(Ljava/lang/String;)V

    .line 85
    invoke-interface {v1, p2, p3}, LhM;->a(J)V

    .line 86
    invoke-interface {v1}, LhM;->a()LhK;

    move-result-object v1

    .line 87
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-interface {v1}, LhK;->b()I

    move-result v0

    .line 91
    :cond_0
    return v0
.end method

.method public static declared-synchronized a()Lhb;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lhb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhb;->e:Lhb;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lhb;

    invoke-direct {v0}, Lhb;-><init>()V

    sput-object v0, Lhb;->e:Lhb;

    .line 49
    :cond_0
    sget-object v0, Lhb;->e:Lhb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)Lhc;
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 191
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lhb;->d:Ljava/io/File;

    const-string v2, "index"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/kaspersky/components/updater/Index;

    .line 192
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lhb;->e()I

    move-result v2

    .line 193
    :goto_0
    if-eqz v5, :cond_1

    .line 194
    new-instance v0, Lhc;

    invoke-virtual {v5}, Lcom/kaspersky/components/updater/Index;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v5}, Lcom/kaspersky/components/updater/Index;->getSize()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/kaspersky/components/updater/Index;->getMobileThreatsCount()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lhc;-><init>(Ljava/util/Date;IJJ)V

    .line 196
    :goto_1
    return-object v0

    .line 192
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 196
    :cond_1
    new-instance v0, Lhc;

    new-instance v3, Ljava/util/GregorianCalendar;

    const/16 v4, 0x7dc

    const/4 v5, 0x4

    const/16 v6, 0xc

    const/16 v7, 0x11

    const/16 v8, 0x34

    invoke-direct/range {v3 .. v8}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    move-wide v3, v9

    move-wide v5, v9

    invoke-direct/range {v0 .. v6}, Lhc;-><init>(Ljava/util/Date;IJJ)V

    goto :goto_1
.end method

.method public static declared-synchronized a(Lid;Ljava/lang/String;LhC;)Z
    .locals 3

    .prologue
    .line 54
    const-class v1, Lhb;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lhb;

    invoke-direct {v0}, Lhb;-><init>()V

    .line 55
    invoke-direct {v0, p0, p1, p2}, Lhb;->b(Lid;Ljava/lang/String;LhC;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 59
    :cond_0
    sput-object v0, Lhb;->e:Lhb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 135
    .line 137
    monitor-enter p0

    .line 138
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iput-object p1, p0, Lhb;->d:Ljava/io/File;

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lhb;->a(Z)Lhc;

    move-result-object v2

    invoke-virtual {v2}, Lhc;->b()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lhb;->b(Ljava/lang/String;J)I

    move-result v1

    .line 142
    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 150
    :cond_0
    :goto_0
    monitor-exit p0

    .line 151
    return v0

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    iput-object p1, p0, Lhb;->d:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/String;J)I
    .locals 3

    .prologue
    .line 95
    const/4 v0, -0x3

    .line 96
    iget-object v1, p0, Lhb;->c:LhS;

    invoke-virtual {v1}, LhS;->c()LhM;

    move-result-object v1

    .line 98
    const/4 v2, 0x0

    invoke-interface {v1, v2}, LhM;->a(I)V

    .line 99
    invoke-interface {v1, p1}, LhM;->a(Ljava/lang/String;)V

    .line 100
    invoke-interface {v1, p2, p3}, LhM;->a(J)V

    .line 102
    invoke-interface {v1}, LhM;->a()LhK;

    move-result-object v1

    .line 103
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-interface {v1}, LhK;->b()I

    move-result v0

    .line 106
    :cond_0
    return v0
.end method

.method private b(Lid;Ljava/lang/String;LhC;)Z
    .locals 2

    .prologue
    .line 63
    new-instance v0, LhF;

    invoke-direct {v0}, LhF;-><init>()V

    iput-object v0, p0, Lhb;->a:LhF;

    .line 66
    invoke-interface {p3}, LhC;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhb;->a:LhF;

    invoke-interface {p1, v0, v1}, Lid;->a(Ljava/lang/String;Lie;)Lic;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lhb;->a:LhF;

    invoke-virtual {v1, v0}, LhF;->a(Lic;)LhI;

    move-result-object v0

    check-cast v0, LhT;

    iput-object v0, p0, Lhb;->b:LhT;

    .line 70
    iget-object v0, p0, Lhb;->b:LhT;

    const-string v1, "com.kavsdk.antivirus.BasesStorage"

    invoke-virtual {v0, v1}, LhT;->a(Ljava/lang/String;)LhJ;

    move-result-object v0

    check-cast v0, LhS;

    iput-object v0, p0, Lhb;->c:LhS;

    .line 71
    iget-object v0, p0, Lhb;->c:LhS;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lhb;->a(Ljava/io/File;)Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lhb;->c:LhS;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lhb;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 112
    const/4 v1, 0x2

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 113
    invoke-interface {v0}, LhM;->a()LhK;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    invoke-interface {v0}, LhK;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v0}, LhK;->b()I

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b()Ljava/io/File;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lhb;->d:Ljava/io/File;

    return-object v0
.end method

.method public final c()I
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 160
    iget-object v0, p0, Lhb;->d:Ljava/io/File;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lhb;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lhb;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lhb;->a(Z)Lhc;

    move-result-object v2

    invoke-virtual {v2}, Lhc;->b()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lhb;->a(Ljava/lang/String;J)I

    move-result v0

    .line 167
    invoke-static {}, Lhn;->a()Lhn;

    move-result-object v2

    invoke-virtual {v2}, Lhn;->b()Z

    move-result v2

    .line 169
    if-nez v0, :cond_1

    if-nez v2, :cond_4

    .line 170
    :cond_1
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 171
    if-nez v3, :cond_2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 174
    :cond_3
    and-int/lit16 v2, v0, 0xff

    .line 175
    if-eqz v2, :cond_4

    .line 176
    if-ne v0, v1, :cond_5

    .line 177
    const/4 v0, 0x6

    .line 183
    :cond_4
    :goto_0
    return v0

    .line 179
    :cond_5
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public final d()Lhc;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lhb;->a(Z)Lhc;

    move-result-object v0

    return-object v0
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lhb;->c:LhS;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lhb;->c:LhS;

    invoke-virtual {v0}, LhS;->a()V

    .line 125
    :cond_0
    iget-object v0, p0, Lhb;->b:LhT;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lhb;->b:LhT;

    invoke-virtual {v0}, LhT;->a()V

    .line 128
    :cond_1
    iget-object v0, p0, Lhb;->a:LhF;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lhb;->a:LhF;

    invoke-virtual {v0}, LhF;->a()V

    .line 131
    :cond_2
    return-void
.end method
