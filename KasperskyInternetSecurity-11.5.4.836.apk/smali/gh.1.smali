.class final Lgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lgh;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->b()Z

    move-result v0

    return v0
.end method
