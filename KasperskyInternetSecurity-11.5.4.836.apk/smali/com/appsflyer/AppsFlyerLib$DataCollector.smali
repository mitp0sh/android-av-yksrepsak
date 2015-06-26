.class Lcom/appsflyer/AppsFlyerLib$DataCollector;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataCollector"
.end annotation


# instance fields
.field private appsFlyerKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private eventName:Ljava/lang/String;

.field private eventValue:Ljava/lang/String;

.field private referrer:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerKey"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "eventValue"    # Ljava/lang/String;
    .param p5, "referrer"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->context:Landroid/content/Context;

    .line 588
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->appsFlyerKey:Ljava/lang/String;

    .line 589
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventName:Ljava/lang/String;

    .line 590
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventValue:Ljava/lang/String;

    .line 591
    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->referrer:Ljava/lang/String;

    .line 592
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lcom/appsflyer/AppsFlyerLib$1;

    .prologue
    .line 578
    invoke-direct/range {p0 .. p5}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 595
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->appsFlyerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->referrer:Ljava/lang/String;

    # invokes: Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method
