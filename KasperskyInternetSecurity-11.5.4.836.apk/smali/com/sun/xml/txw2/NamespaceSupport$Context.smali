.class final Lcom/sun/xml/txw2/NamespaceSupport$Context;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/txw2/NamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Context"
.end annotation


# instance fields
.field attributeNameTable:Ljava/util/Hashtable;

.field private declSeen:Z

.field private declarations:Ljava/util/Vector;

.field defaultNS:Ljava/lang/String;

.field elementNameTable:Ljava/util/Hashtable;

.field private parent:Lcom/sun/xml/txw2/NamespaceSupport$Context;

.field prefixTable:Ljava/util/Hashtable;

.field final synthetic this$0:Lcom/sun/xml/txw2/NamespaceSupport;

.field uriTable:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/sun/xml/txw2/NamespaceSupport;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 578
    iput-object p1, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->this$0:Lcom/sun/xml/txw2/NamespaceSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 854
    iput-object v1, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    .line 855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declSeen:Z

    .line 856
    iput-object v1, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->parent:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    .line 579
    invoke-direct {p0}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->copyTables()V

    .line 580
    return-void
.end method

.method private copyTables()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    .line 826
    :goto_0
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    .line 831
    :goto_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .line 832
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declSeen:Z

    .line 834
    return-void

    .line 824
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    goto :goto_0

    .line 829
    :cond_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    goto :goto_1
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->parent:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    .line 611
    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    .line 612
    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    .line 613
    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .line 614
    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 615
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 616
    return-void
.end method

.method declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declSeen:Z

    if-nez v0, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/sun/xml/txw2/NamespaceSupport$Context;->copyTables()V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 636
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    .line 639
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 641
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    iput-object p2, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 647
    :goto_0
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 648
    return-void

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 781
    # getter for: Lcom/sun/xml/txw2/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;
    invoke-static {}, Lcom/sun/xml/txw2/NamespaceSupport;->access$100()Ljava/util/Enumeration;

    move-result-object v0

    .line 783
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 760
    iget-object v3, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_2

    .line 761
    iget-object v3, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 762
    .local v0, "uriPrefix":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v0, v2

    .line 768
    .end local v0    # "uriPrefix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 763
    .restart local v0    # "uriPrefix":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 764
    .local v1, "verifyNamespace":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "uriPrefix":Ljava/lang/String;
    .end local v1    # "verifyNamespace":Ljava/lang/String;
    :cond_2
    move-object v0, v2

    .line 768
    goto :goto_0
.end method

.method getPrefixes()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 800
    # getter for: Lcom/sun/xml/txw2/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;
    invoke-static {}, Lcom/sun/xml/txw2/NamespaceSupport;->access$100()Ljava/util/Enumeration;

    move-result-object v0

    .line 802
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 739
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 744
    :goto_0
    return-object v0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 742
    const/4 v0, 0x0

    goto :goto_0

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method processName(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 10
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "isAttribute"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 668
    if-eqz p2, :cond_0

    .line 669
    iget-object v4, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 677
    .local v4, "table":Ljava/util/Hashtable;
    :goto_0
    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    .line 678
    .local v2, "name":[Ljava/lang/String;
    if-eqz v2, :cond_1

    move-object v6, v2

    .line 725
    :goto_1
    return-object v6

    .line 671
    .end local v2    # "name":[Ljava/lang/String;
    .end local v4    # "table":Ljava/util/Hashtable;
    :cond_0
    iget-object v4, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .restart local v4    # "table":Ljava/util/Hashtable;
    goto :goto_0

    .line 686
    .restart local v2    # "name":[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/String;

    .line 687
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    .line 688
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 692
    .local v0, "index":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 693
    if-eqz p2, :cond_3

    .line 694
    const-string v6, "xmlns"

    if-ne p1, v6, :cond_2

    iget-object v6, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->this$0:Lcom/sun/xml/txw2/NamespaceSupport;

    # getter for: Lcom/sun/xml/txw2/NamespaceSupport;->namespaceDeclUris:Z
    invoke-static {v6}, Lcom/sun/xml/txw2/NamespaceSupport;->access$000(Lcom/sun/xml/txw2/NamespaceSupport;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 695
    const-string v6, "http://www.w3.org/xmlns/2000/"

    aput-object v6, v2, v7

    .line 701
    :goto_2
    aget-object v6, v2, v8

    aput-object v6, v2, v9

    .line 724
    :goto_3
    aget-object v6, v2, v8

    invoke-virtual {v4, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    .line 725
    goto :goto_1

    .line 697
    :cond_2
    const-string v6, ""

    aput-object v6, v2, v7

    goto :goto_2

    .line 699
    :cond_3
    iget-object v6, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    aput-object v6, v2, v7

    goto :goto_2

    .line 706
    :cond_4
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 707
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "local":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 710
    iget-object v5, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 714
    .local v5, "uri":Ljava/lang/String;
    :goto_4
    if-eqz v5, :cond_5

    if-nez p2, :cond_7

    const-string v6, "xmlns"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 716
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 712
    .end local v5    # "uri":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "uri":Ljava/lang/String;
    goto :goto_4

    .line 718
    :cond_7
    aput-object v5, v2, v7

    .line 719
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    goto :goto_3
.end method

.method setParent(Lcom/sun/xml/txw2/NamespaceSupport$Context;)V
    .locals 1
    .param p1, "parent"    # Lcom/sun/xml/txw2/NamespaceSupport$Context;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->parent:Lcom/sun/xml/txw2/NamespaceSupport$Context;

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declarations:Ljava/util/Vector;

    .line 594
    iget-object v0, p1, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    .line 595
    iget-object v0, p1, Lcom/sun/xml/txw2/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    .line 596
    iget-object v0, p1, Lcom/sun/xml/txw2/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .line 597
    iget-object v0, p1, Lcom/sun/xml/txw2/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 598
    iget-object v0, p1, Lcom/sun/xml/txw2/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/xml/txw2/NamespaceSupport$Context;->declSeen:Z

    .line 600
    return-void
.end method
