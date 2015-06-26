.class final Lgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lgg;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-static {v0}, Lqy;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
