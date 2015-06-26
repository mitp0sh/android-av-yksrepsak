.class final Ljv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe;


# instance fields
.field private synthetic a:Lju;


# direct methods
.method constructor <init>(Lju;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Ljv;->a:Lju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/kaspersky/components/cloudinfo/CloudInfoService;

    invoke-direct {v0}, Lcom/kaspersky/components/cloudinfo/CloudInfoService;-><init>()V

    invoke-static {}, Lcom/kaspersky/components/cloudinfo/CloudInfoService;->a()J

    move-result-wide v0

    return-wide v0
.end method
