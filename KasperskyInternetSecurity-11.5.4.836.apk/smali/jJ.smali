.class public final LjJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/kms/kmsshared/KMSApplication;

.field private static b:Lrx;

.field private static c:Lcom/kms/KisTheme;

.field private static volatile d:Z

.field private static final e:Ltg;

.field private static final f:Lmk;

.field private static final g:Lde;

.field private static final h:LkZ;

.field private static final i:LkM;

.field private static final j:LpA;

.field private static final k:Lww;

.field private static l:LbG;

.field private static m:LvH;

.field private static final n:Landroid/os/Handler;

.field private static o:Ll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, LjJ;->d:Z

    .line 53
    new-instance v0, Lth;

    invoke-direct {v0}, Lth;-><init>()V

    sput-object v0, LjJ;->e:Ltg;

    .line 56
    new-instance v0, Lml;

    invoke-direct {v0}, Lml;-><init>()V

    sput-object v0, LjJ;->f:Lmk;

    .line 59
    new-instance v0, Ldf;

    invoke-direct {v0}, Ldf;-><init>()V

    sput-object v0, LjJ;->g:Lde;

    .line 62
    new-instance v0, Lll;

    invoke-direct {v0}, Lll;-><init>()V

    sput-object v0, LjJ;->h:LkZ;

    .line 65
    new-instance v0, LkN;

    invoke-direct {v0}, LkN;-><init>()V

    sput-object v0, LjJ;->i:LkM;

    .line 68
    new-instance v0, LpB;

    invoke-direct {v0}, LpB;-><init>()V

    sput-object v0, LjJ;->j:LpA;

    .line 70
    new-instance v0, Lwx;

    invoke-direct {v0}, Lwx;-><init>()V

    sput-object v0, LjJ;->k:Lww;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, LjJ;->n:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method public static a()Landroid/app/Application;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, LjJ;->r()V

    .line 118
    sget-object v0, LjJ;->a:Lcom/kms/kmsshared/KMSApplication;

    return-object v0
.end method

.method public static a(Lcom/kms/kmsshared/KMSApplication;Lcom/kms/KisTheme;)V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, LsG;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App#init() must be called from Application#onCreate() method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    sget-boolean v0, LjJ;->d:Z

    if-nez v0, :cond_1

    .line 92
    sput-object p0, LjJ;->a:Lcom/kms/kmsshared/KMSApplication;

    .line 93
    new-instance v0, LrA;

    new-instance v1, Lry;

    invoke-direct {v1}, Lry;-><init>()V

    invoke-direct {v0, v1}, LrA;-><init>(Lrx;)V

    sput-object v0, LjJ;->b:Lrx;

    .line 94
    sput-object p1, LjJ;->c:Lcom/kms/KisTheme;

    .line 96
    new-instance v0, LbG;

    const-string v1, "fonts"

    invoke-direct {v0, p0, v1}, LbG;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, LjJ;->l:LbG;

    .line 98
    sget-object v0, LjJ;->f:Lmk;

    sget-object v1, LjJ;->b:Lrx;

    invoke-interface {v0, v1}, Lmk;->a(Lrx;)V

    .line 99
    sget-object v0, LjJ;->j:LpA;

    sget-object v1, LjJ;->b:Lrx;

    invoke-interface {v0, v1}, LpA;->a(Lrx;)V

    .line 100
    new-instance v0, LmU;

    sget-object v1, LjJ;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-direct {v0, v1}, LmU;-><init>(Landroid/content/Context;)V

    sput-object v0, LjJ;->o:Ll;

    .line 101
    new-instance v0, LvK;

    new-instance v1, LvJ;

    sget-object v2, LjJ;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v2}, Lcom/kms/kmsshared/KMSApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {v1, v2}, LvJ;-><init>(Landroid/content/res/AssetManager;)V

    invoke-direct {v0, v1}, LvK;-><init>(LvI;)V

    invoke-virtual {v0}, LvK;->a()LvH;

    move-result-object v0

    sput-object v0, LjJ;->m:LvH;

    .line 103
    const/4 v0, 0x1

    sput-boolean v0, LjJ;->d:Z

    return-void

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "App has already been initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Lrx;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, LjJ;->r()V

    .line 124
    sget-object v0, LjJ;->b:Lrx;

    return-object v0
.end method

.method public static c()Lcom/kms/KisTheme;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, LjJ;->r()V

    .line 130
    sget-object v0, LjJ;->c:Lcom/kms/KisTheme;

    return-object v0
.end method

.method public static d()Ltg;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, LjJ;->r()V

    .line 136
    sget-object v0, LjJ;->e:Ltg;

    return-object v0
.end method

.method public static e()Lmk;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, LjJ;->r()V

    .line 142
    sget-object v0, LjJ;->f:Lmk;

    return-object v0
.end method

.method public static f()LpA;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, LjJ;->r()V

    .line 148
    sget-object v0, LjJ;->j:LpA;

    return-object v0
.end method

.method public static g()Lde;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, LjJ;->r()V

    .line 154
    sget-object v0, LjJ;->g:Lde;

    return-object v0
.end method

.method public static h()LkZ;
    .locals 1

    .prologue
    .line 159
    invoke-static {}, LjJ;->r()V

    .line 160
    sget-object v0, LjJ;->h:LkZ;

    return-object v0
.end method

.method public static i()LkM;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, LjJ;->r()V

    .line 166
    sget-object v0, LjJ;->i:LkM;

    return-object v0
.end method

.method public static j()Lwz;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, LjJ;->r()V

    .line 171
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lwz;

    return-object v0
.end method

.method public static k()Lww;
    .locals 1

    .prologue
    .line 176
    invoke-static {}, LjJ;->r()V

    .line 177
    sget-object v0, LjJ;->k:Lww;

    return-object v0
.end method

.method public static l()Lv;
    .locals 1

    .prologue
    .line 182
    invoke-static {}, LjJ;->r()V

    .line 183
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lrq;

    return-object v0
.end method

.method public static m()LbG;
    .locals 1

    .prologue
    .line 188
    invoke-static {}, LjJ;->r()V

    .line 189
    sget-object v0, LjJ;->l:LbG;

    return-object v0
.end method

.method public static n()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, LjJ;->r()V

    .line 195
    sget-object v0, LjJ;->n:Landroid/os/Handler;

    return-object v0
.end method

.method public static o()LvH;
    .locals 1

    .prologue
    .line 200
    invoke-static {}, LjJ;->r()V

    .line 201
    sget-object v0, LjJ;->m:LvH;

    return-object v0
.end method

.method public static p()Ll;
    .locals 1

    .prologue
    .line 206
    invoke-static {}, LjJ;->r()V

    .line 207
    sget-object v0, LjJ;->o:Ll;

    return-object v0
.end method

.method public static q()LM;
    .locals 2

    .prologue
    .line 211
    new-instance v0, LoS;

    invoke-static {}, LjJ;->p()Ll;

    move-result-object v1

    invoke-direct {v0, v1}, LoS;-><init>(Ll;)V

    return-object v0
.end method

.method private static r()V
    .locals 2

    .prologue
    .line 110
    sget-boolean v0, LjJ;->d:Z

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "App class must be initialized before usage!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    return-void
.end method
